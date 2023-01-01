import 'package:flutter/material.dart';
import 'package:muljipsa/component/border_comment.dart';
import 'package:muljipsa/component/border_utill.dart';
import 'package:muljipsa/layout/my_page_layout.dart';

class BoarderView extends StatelessWidget {
  const BoarderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPageLayout(content: _Content(), title: '글읽기');
  }
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Column(
            children: [
              SizedBox(
                child: Text(
                  '이번 발표 내용을 소개합니다.',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff333333),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Text(
                  '2022.10.11',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff999999),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Text(
                  'iPhone을 완전히 새로운 방식으로 다룰 수 있게 해주는 Dynamic Island. 생명을 구할 수 있도록 설계된 핵심 안전 기능. 압도적인 디테일을 자랑하는 혁신적인 48MP 카메라. 이 모든 걸 가능케 하는 궁극의 스마트폰 칩.',
                  style: TextStyle(
                    height: 2.25,
                  ),
                ),
              ),
              SizedBox(
                child: BorderUtill(),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: const Color(0xFFeeeeee),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  10,
                  (index) => BorderComment(
                    username: '더현대',
                    content: '안녕하세요',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
