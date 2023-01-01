import 'package:flutter/material.dart';
import 'package:muljipsa/component/border_comment.dart';

class BorderUtill extends StatefulWidget {
  const BorderUtill({Key? key}) : super(key: key);

  @override
  State<BorderUtill> createState() => _BorderUtillState();
}

class _BorderUtillState extends State<BorderUtill> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 40,
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _BtnBorderUtill(
                onTap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
                iconData: Icons.favorite,
                title: '좋아요',
                color: isLiked ? Colors.red : Color(0xFFaaaaaa),
              ),
              Container(
                width: 1,
                height: 15,
                decoration: BoxDecoration(
                  color: Color(0xFFeeeeee),
                ),
              ),
              _BtnBorderUtill(
                onTap: () {
                  showModel();
                },
                iconData: Icons.mode_comment_outlined,
                title: '댓글',
                color: Color(0xFFaaaaaa),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Bottom 다이얼로그
  void showModel() {
    showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // 기본: false, 기본일 경우 최대 높이가 전체 높이의 50%, true 일 경우 전체 높이 100%
      builder: (context) {
        // 기본 UI 가 차지하는 높이
        final bottomInset = MediaQuery.of(context).viewInsets.bottom;
        return Container(
          width: MediaQuery.of(context).size.width,
          // 기본 시스템 UI 높이만큼 패딩 bottom 부여
          child: Padding(
            padding: EdgeInsets.only(bottom: bottomInset),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextField(
                      // 화면이 로드 되었을시 바로 포커스
                      autofocus: true,
                      decoration: InputDecoration(
                        // input 의 패딩
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        color: Colors.indigo,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Center(
                            child: Text(
                              '댓글 작성',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _BtnBorderUtill extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;
  final String title;
  final Color color;

  const _BtnBorderUtill({
    required this.onTap,
    required this.iconData,
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Icon(
              iconData,
              color: color,
              size: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
