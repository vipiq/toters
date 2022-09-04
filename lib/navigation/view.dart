import 'package:flutter/material.dart';
import 'package:tutrs/delivery/view.dart';
import 'package:tutrs/home/view.dart';
import 'package:tutrs/orders/view.dart';
import 'package:tutrs/profile/view.dart';
import 'package:tutrs/search/view.dart';

class bottombar extends StatefulWidget {

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  var mainColor = 0XFF12b699;
  int currentPage = 0;
  List pages = [
    home(),
    search(),
    delivery(),
    orders(),
    profile()
  ];
  void onTap(int index){
    setState(() {
      currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: Directionality(textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentPage,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(mainColor),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          mouseCursor: MouseCursor.defer,
          enableFeedback: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "البحث"),
            BottomNavigationBarItem(icon: Icon(Icons.moped_outlined), label: "المندوب"),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: "الطلبات"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "الحساب"),

          ],
        ),
      ),
    );
  }
}
