import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:muljipsa/layout/my_page_layout.dart';

class BoarderWrite extends StatelessWidget {
  const BoarderWrite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPageLayout(content: _Content(), title: '글쓰기');
  }
}

class _Content extends StatefulWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  List<XFile> selectImages = [];

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
            SizedBox(
              height: 15,
            ),
            Row(
              children: selectImages.map((image) {
                return Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey,
                    border: Border.all(color: Colors.black, width: 1),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image.path),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: GestureDetector(
                    onTap: () async {
                      final List<XFile>? images =
                          await ImagePicker().pickMultiImage(
                        maxWidth: 760,
                        maxHeight: 760,
                        imageQuality: 80,
                      );

                      if (images != null) {
                        setState(() {
                          this.selectImages = images;
                        });
                      }
                    },
                    child: Container(
                      child: Icon(
                        Icons.photo_outlined,
                        size: 40,
                        color: Color(0xFF666666),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  child: GestureDetector(
                    onTap: () async {
                      final XFile? images = await ImagePicker()
                          .pickImage(source: ImageSource.camera);

                      print(images);
                    },
                    child: Container(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 40,
                        color: Color(0xFF666666),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
