import 'package:flutter/material.dart';

import '../delivery/view.dart';
import '../home/view.dart';
import '../profile/view.dart';
import '../search/view.dart';

class orders extends StatefulWidget {
  const orders({Key? key}) : super(key: key);

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
  bool isOldOrder = true;
  var mainColor = 0XFF12b699;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Directionality( textDirection: TextDirection.rtl,
        child: Column(

          children: [
            Container(
              height: 100,
              padding: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 1, color: Colors.grey.withOpacity(0.3)))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isOldOrder = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: isOldOrder ? Border(bottom: BorderSide(width: 1, color: Color(mainColor))) : Border(bottom: BorderSide.none),
                          color: Colors.white
                      ),
                      child: Padding(padding: EdgeInsets.only(bottom: 5),
                        child: Text("طلبات سابقة",style: TextStyle(fontFamily: 'readex', color: isOldOrder ? Colors.black : Colors.grey),),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isOldOrder = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: isOldOrder ? Border(bottom: BorderSide.none) : Border(bottom: BorderSide(width: 1, color: Color(mainColor))),
                      ),
                      child: Padding(padding: EdgeInsets.only(bottom: 5),
                        child: Text("الطلبات القادمة",style: TextStyle(fontFamily: 'readex', color: isOldOrder ? Colors.grey : Colors.black),),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height-190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/vector.png"),
                  isOldOrder ? Text("ليس لديك اي طلبات سابقة!", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold, fontSize: 25, color: Color(mainColor)),)
                  :
                  Text("لا يوجد طلبات قادمة", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold, fontSize: 25, color: Color(mainColor)),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
