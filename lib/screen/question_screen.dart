import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  // true 일 경우 '문의하기'
  // false 일 경우 '문의내역'
  bool mode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: Colors.white, // appbar background color
        foregroundColor: Colors.black, // appbar text color.
        title: Text('고객센터'),
        centerTitle: true, // 안드로이드 텍스트 센터 이동
        elevation: 0, // boxshadow 없애기
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        mode = true;
                      });
                    },
                    child: Container(
                      color: mode ? Colors.black : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '문의 하기',
                          textAlign: TextAlign.center,
                          style: mode
                              ? TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                )
                              : null,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        mode = false;
                      });
                    },
                    child: Container(
                      color: mode ? Colors.white : Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '문의 내역',
                          textAlign: TextAlign.center,
                          style: mode
                              ? null
                              : TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: mode ? _Form() : _QuestionList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: '문의 내용',
            ),
            style: TextStyle(
              // height: 100,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('문의 하기'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: EdgeInsets.all(15),
          ),
        )
      ],
    );
  }
}

class _QuestionList extends StatelessWidget {
  const _QuestionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [1, 2, 3, 4, 5].map((item) => _QuestionListItem()).toList(),
    );
  }
}

class _QuestionListItem extends StatelessWidget {
  const _QuestionListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      textColor: Colors.black,
      iconColor: Colors.black,
      title: Text(
        "Q. 카카오톡 송금하기가 안되요!",
        // style: TextStyle(
        //   color: Colors.black,
        // ),
      ), //header title
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: Colors.black12),
            ),
            // color: Color(0xffefefef),
          ),
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Text(
              "카카오톡 송금하기가 안되요! 카카오톡 송금하기가 안되요! 카카오톡 송금하기가 안되요! 카카오톡 송금하기가 안되요! 카카오톡 송금하기가 안되요! "),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: Colors.black12),
            ),
            // color: Color(0xffefefef),
          ),
          child: Text('A. 고객님 순차적으로 도와드리겠습니다.'),
        )
      ],
    );
  }
}
