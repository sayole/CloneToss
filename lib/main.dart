import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'firstPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toss UI Clone',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: TossColor.grey1,
        ),
        scaffoldBackgroundColor: TossColor.grey1,
      ),
      home: const MyHomePage(),
    );
  }
}

class TossColor {
  static const Color white = Color(0xffFAFAFB);
  static const Color grey1 = Color(0xfff2f3f5);
  static const Color grey2 = Color(0xffD1D5DA);
  static const Color bluegrey = Color(0xff353d4a);
  static const Color black = Color(0xff1a1f27);
  static const Color blue = Color(0xff4583EE);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          SizedBox(
            width: 15,
          ),
          GestureDetector(
            child: Image.asset(
              'assets/toss_logo.png',
              width: 90,
            ),
          ),
          Spacer(),
          GestureDetector(
            child: Image.asset(
              'assets/toss_appbar_icon_1.png',
              width: 45,
            ),
          ),
          SizedBox(
            width: 7,
          ),
          GestureDetector(
            child: Image.asset(
              'assets/toss_appbar_icon_2.png',
              width: 35,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Image.asset(
              'assets/toss_appbar_icon_3.png',
              width: 30,
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: IndexedStack(
        index: currentIndex, // index ????????? ???????????? child??? ??? ?????? ?????????
        children: [
          TossFirstPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // ?????? ???????????? ???
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          // ?????? ???????????? ??????
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: TossColor.black, // ????????? ????????? ??????
        unselectedItemColor: Colors.grey, // ???????????? ?????? ????????? ??????
        // showSelectedLabels: false, // ????????? ?????? label ?????????
        // showUnselectedLabels: false, // ???????????? ?????? ?????? label ?????????
        type: BottomNavigationBarType.fixed, // ????????? ????????? ???????????? ??????
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '???'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_photo_alternate), label: "??????"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_shipping), label: "??????"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "??????"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "??????"),
        ],
      ),
    );
  }
}
