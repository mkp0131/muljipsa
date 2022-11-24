import 'package:flutter/material.dart';

class MyPageLayout extends StatelessWidget {
  final Widget content;
  final String title;

  const MyPageLayout({
    required this.content,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: Colors.white, // appbar background color
        foregroundColor: Colors.black, // appbar text color.
        title: Text(title),
        centerTitle: true, // 안드로이드 텍스트 센터 이동
        elevation: 0, // boxshadow 없애기
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: content,
            ),
          ],
        ),
      ),
    );
  }
}
