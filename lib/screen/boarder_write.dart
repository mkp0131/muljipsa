import 'package:flutter/material.dart';
import 'package:muljipsa/layout/my_page_layout.dart';

class BoarderWrite extends StatelessWidget {
  const BoarderWrite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPageLayout(content: _Content(), title: '글쓰기');
  }
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              maxLines: 1, //or null
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration.collapsed(hintText: "제목을 적어주세요."),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: TextField(
                maxLines: 10, //or null
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration.collapsed(hintText: "내용을 적어주세요."),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('글 작성'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
