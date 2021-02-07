import 'package:flutter/material.dart';
import 'package:ssf/config/style.dart';
import 'package:ssf/pubs/screen_util.dart';

import 'moduler/moduler_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pageList;

  List<BottomNavigationBarItem> navBar;

  // 当前被选中的 tab 页的下标
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    pageList = [
      ModulerPage(),
    ];

    navBar = [
      BottomNavigationBarItem(
        icon: Icon(
          IconData(0xe603, fontFamily: 'iconfont'),
          size: sp(48),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          IconData(0xe602, fontFamily: 'iconfont'),
          size: sp(48),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          IconData(0xe604, fontFamily: 'iconfont'),
          size: sp(48),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Style.black,
        unselectedItemColor: Style.grey,
        backgroundColor: Style.white,
        currentIndex: currentIndex,
        elevation: 0,
        items: navBar,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pageList,
      ),
    );
  }
}
