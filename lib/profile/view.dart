import 'package:flutter/material.dart';

import '../delivery/view.dart';
import '../home/view.dart';
import '../orders/view.dart';
import '../search/view.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
              alignment: Alignment.bottomCenter,
              child:Text("Ibrahim ali", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),

            Container(
              height: MediaQuery.of(context).size.height-191,
              color: Colors.grey.withOpacity(0.05),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.1)
                        )]
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.card_giftcard_outlined, color: Color(mainColor), size: 35,),
                        Padding(padding: EdgeInsets.only(right: 10, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("الفئة الخضراء", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'readex'),),
                              Text("0 نقطة", style: TextStyle(color: Colors.grey, fontFamily: 'readex'),),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Color(mainColor), size: 20,)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.1)
                        )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.09),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.person_outline, size: 30, color: Colors.black54,),
                            ),
                            Text("الملف الشخصي", style: TextStyle(fontFamily: 'readex', fontSize: 12),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.09),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.support_agent_outlined, size: 30, color: Colors.black54,),
                            ),
                            Text("مركز المساعدة", style: TextStyle(fontFamily: 'readex', fontSize: 12),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.09),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.payment_outlined, size: 30, color: Colors.black54,),
                            ),
                            Text("طرق الدفع", style: TextStyle(fontFamily: 'readex', fontSize: 12),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.09),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.language, size: 30, color: Colors.black54,),
                            ),
                            Text("اللغة", style: TextStyle(fontFamily: 'readex', fontSize: 12),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.1)
                        )]
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("الرصيد النقدي لدى توترز", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold),),
                            SizedBox(width: 6,),
                            Icon(Icons.info_outline, color: Color(mainColor), size: 30,)
                          ],
                        ),
                        item('المحفضة', Icons.wallet, true, '٠ د.ع.'),
                        item('اضف الى الرصيد', Icons.add_outlined, true, ''),
                        item('تحويل الاموال', Icons.upload_outlined, false, ''),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.1)
                        )]
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("عروض خاصة", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold),),
                            SizedBox(width: 6,),
                            Icon(Icons.info_outline, color: Color(mainColor), size: 30,)
                          ],
                        ),
                        item('رصيد', Icons.percent_outlined, true, '٠ د.ع.'),
                        item('اضف رمز العرض', Icons.local_offer_outlined, false, ''),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.1)
                        )]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("تفاصيل الحساب", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold),),
                        item('الاشعارات', Icons.notifications_none_outlined, true, ''),
                        item('العناوين', Icons.location_on_outlined, true, ''),
                        item('اختياراتك', Icons.favorite_border_outlined, true, ''),
                        item('التفضيلات', Icons.list_alt_rounded, true, ''),
                        item('ادع اصدقائك', Icons.person_add_alt_1_outlined, false, ''),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.1)
                        )]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("مركز المساعدة", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold),),
                        item('اطلب المساعدة', Icons.support_agent_outlined, true, ''),
                        item('بطاقات المساعدة', Icons.chat_bubble_outline, true, ''),
                        item('قانوني', Icons.low_priority_rounded, true, ''),
                        item('الاسئلة المتكررة', Icons.question_mark_rounded, false, ''),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.1)
                        )]
                    ),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.login, size: 30, color: Colors.redAccent,),
                          SizedBox(width: 10,),
                          Text('تسجيل الخروج', style: TextStyle(fontFamily: 'readex', color: Colors.redAccent,),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container item(
      String itemName,
      var itemIcon,
      bool hasBorder,
      String info
      ){
    return Container(
      decoration: BoxDecoration(
        border: hasBorder ? Border(bottom: BorderSide(width: 1, color: Colors.black.withOpacity(0.1))): Border(bottom: BorderSide.none)
      ),
      child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(itemIcon, size: 30, color: Colors.black54,),
                Padding(padding: EdgeInsets.only(right: 10),
                  child: Text(itemName, style: TextStyle(fontFamily: 'readex'),),
                )
              ],
            ),
            Text(info, style: TextStyle(fontFamily: 'readex', color: Color(mainColor)),)
          ],
        ),
      ),
    );
  }
}
