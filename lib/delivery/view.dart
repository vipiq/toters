import 'package:flutter/material.dart';

import '../home/view.dart';
import '../orders/view.dart';
import '../profile/view.dart';
import '../search/view.dart';

class delivery extends StatefulWidget {

  @override
  State<delivery> createState() => _deliveryState();
}

class _deliveryState extends State<delivery> {
  var mainColor = 0XFF12b699;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              height: 50,
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 30, right: 15),
              width: MediaQuery.of(context).size.width,
              color: Color(mainColor),
            ),

            Container(
              height: MediaQuery.of(context).size.height-141,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    height: 80,
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(bottom: 30, right: 15),
                    width: MediaQuery.of(context).size.width,
                    color: Color(mainColor),
                    child: Text("نوصل اي شئ يسع على متن دراجة نارية!", style: TextStyle(fontSize: 18, fontFamily: 'readex', fontWeight: FontWeight.bold, color: Colors.white),),
                  ),

                  Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text("اطلب مندوب ل:", style: TextStyle(fontSize: 18, fontFamily: 'readex'),),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width-190,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("توصيل احتياجاتك", style: TextStyle(fontSize: 16, fontFamily: 'readex', fontWeight: FontWeight.w300, color: Color(mainColor)),),
                                    Padding(padding: EdgeInsets.only(top: 5),
                                      child: Text("مثلاً نسيت مفتاحك بالبيت، وتريد احد يوصله لك للمكتب", style: TextStyle(fontSize: 12, fontFamily: 'readex', color: Colors.black45),),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset("images/vector.png", width: 100,),
                              Icon(Icons.arrow_forward_ios, size: 18, color: Color(mainColor),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width-190,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("شراء احتياجاتك", style: TextStyle(fontSize: 16, fontFamily: 'readex', fontWeight: FontWeight.w300, color: Color(mainColor)),),
                                    Padding(padding: EdgeInsets.only(top: 5),
                                      child: Text("ما لقيت اللي تريده بتطبيقنا ؟ مندوب توترز يقدر يشتري لك اللي تحتاجه من اي مكان تختاره", style: TextStyle(fontSize: 12, fontFamily: 'readex', color: Colors.black45),),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset("images/vector.png", width: 100,),
                              Icon(Icons.arrow_forward_ios, size: 18, color: Color(mainColor),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
