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
          elevation: 0,
          onTap: onTap,
          currentIndex: currentPage,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(mainColor),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontFamily: 'readex', fontSize: 8),
          unselectedLabelStyle: TextStyle(fontFamily: 'readex', fontSize: 8),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 25,), label: "رئيسية"),
            BottomNavigationBarItem(icon: Icon(Icons.search, size: 25,), label: "بحث"),
            BottomNavigationBarItem(icon: Icon(Icons.moped_outlined, size: 25,), label: "المندوب"),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded, size: 25,), label: "طلبات"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline, size: 25,), label: "حساب"),

          ],
        ),
      ),
    );
  }
}
