import 'package:flutter/material.dart';
import 'package:muljipsa/layout/my_page_layout.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPageLayout(content: _Content(), title: '내 정보');
  }
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 테마 불러오기
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Profile(),
        SizedBox(
          height: 8,
        ),
        _MenuList(),
      ],
    );
  }
}

class _Profile extends StatelessWidget {
  const _Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffeeeeee),
                image: DecorationImage(
                  image: AssetImage('assets/images/user.png'),
                ),
              ),
              width: 75,
              height: 75,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              '춘식이',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuList extends StatelessWidget {
  const _MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List menuList = [
      ['구매내역', Icons.shop_outlined, '/purchase_history'],
      ['고객센터', Icons.quora, '/question'],
      ['친구초대', Icons.add, '/invite_friend'],
    ];

    return Container(
      color: Colors.white,
      child: Column(
        children: menuList
            .map((item) => _MenuListItem(
                  iconName: item[1],
                  menuName: item[0],
                  route: item[2],
                ))
            .toList(),
      ),
    );
  }
}

class _MenuListItem extends StatelessWidget {
  final IconData iconName;
  final String menuName;
  final String route;

  const _MenuListItem({
    required this.iconName,
    required this.menuName,
    required this.route,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle menuListTextStyle = TextStyle(
      fontSize: 18,
    );
    final double menuListIconSize = 30.0;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Colors.black12,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(iconName, size: menuListIconSize),
              SizedBox(
                width: 10,
              ),
              Text(
                menuName,
                style: menuListTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
