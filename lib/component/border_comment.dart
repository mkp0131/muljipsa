import 'package:flutter/material.dart';

class BorderComment extends StatelessWidget {
  final String username;
  final String content;
  final bool isReply;

  const BorderComment({
    required this.username,
    required this.content,
    this.isReply = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 15.0,
        left: isReply ? 50 : 0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFeeeeee),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/user.png'),
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  username,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  content,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
