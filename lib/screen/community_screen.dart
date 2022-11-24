import 'package:flutter/material.dart';
import 'package:muljipsa/layout/my_page_layout.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPageLayout(content: _Content(), title: '커뮤니티');
  }
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _MainMenuList(),
          SizedBox(
            height: 10.0,
          ),
          _BannerSection(),
          SizedBox(
            height: 10.0,
          ),
          _BoarderBox(),
          SizedBox(
            height: 10,
          ),
          _BoarderBox(),
          SizedBox(
            height: 10,
          ),
          _BoarderBox(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class _MainMenuList extends StatelessWidget {
  const _MainMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ['assets/images/menuIcon1.webp', '공지사항'],
                    ['assets/images/menuIcon2.webp', '후기 Tip'],
                    ['assets/images/menuIcon3.webp', '과외 후기'],
                    ['assets/images/menuIcon4.webp', '수입 Tip'],
                  ]
                      .map(
                        (item) => _MainMenuItem(
                          imgUrl: item[0],
                          text: item[1],
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ['assets/images/menuIcon5.webp', '자랑하기'],
                    ['assets/images/menuIcon6.webp', '홍보하기'],
                    ['assets/images/menuIcon7.webp', '궁금해요'],
                    ['assets/images/menuIcon8.webp', '자유게시판'],
                  ]
                      .map(
                        (item) => _MainMenuItem(
                          imgUrl: item[0],
                          text: item[1],
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _MainMenuItem extends StatelessWidget {
  final String imgUrl;
  final String text;

  const _MainMenuItem({
    required this.imgUrl,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black.withOpacity(0.1),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imgUrl), // 배경 이미지
            ),
          ),
          width: 60,
          height: 60,
          // child: Text('안녕'),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            // fontWeight: FontWeight.w700,
            color: Color(0xff666666),
          ),
        ),
      ],
    );
  }
}

class _BannerSection extends StatelessWidget {
  const _BannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/banner1.jpeg'),
    );
  }
}

class _BoarderBox extends StatelessWidget {
  const _BoarderBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '공지사항',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            _BoarderItem(),
            _BoarderItem(),
            _BoarderItem(),
            _BoarderItem(),
          ],
        ),
      ),
    );
  }

  Widget _BoarderItem() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                'iPhone을 완전히 새로운 방식으로 다룰 수 있게 해주는 Dynamic Island',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff666666),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '2022.11.22',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xffcccccc),
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
