import 'package:flutter/material.dart';
import 'package:muljipsa/layout/my_page_layout.dart';

class Boarder extends StatelessWidget {
  const Boarder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPageLayout(content: _Content(), title: '공지사항');
  }
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
            _ListItem(),
          ],
        ),
        Positioned(
          right: 30,
          bottom: 50,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/boarder_write');
              },
              icon: Icon(
                Icons.add,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/boarder_view');
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
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
      ),
    );
  }
}
