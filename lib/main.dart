import 'package:flutter/material.dart';
import 'package:muljipsa/screen/community_screen.dart';
import 'package:muljipsa/screen/home_screen.dart';
import 'package:muljipsa/screen/invite_friend_screen.dart';
import 'package:muljipsa/screen/my_page_screen.dart';
import 'package:muljipsa/screen/purchase_history_screen.dart';
import 'package:muljipsa/screen/question_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '물집사',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.black,
        primarySwatch: Colors.blue,
        dividerColor: Colors.transparent,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xff666666),
            fontSize: 22,
          ),
        ),
      ),
      initialRoute: '/', // 앱이 처음 실행될 라우트
      routes: {
        // 라우트 리스트
        // 홈
        '/': (context) => HomeScreen(),
        // 마이페이지
        '/mypage': (context) => MyPage(),
        '/purchase_history': (context) => PurChaseHistory(),
        '/question': (context) => Question(),
        '/invite_friend': (context) => InviteFriend(),
        // 커뮤니티
        '/community': (context) => CommunityScreen(),
        '/boarder': (context) => CommunityScreen(),
      },
    );
  }
}
