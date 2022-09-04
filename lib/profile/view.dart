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
              height: 92,
              padding: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.bottomCenter,
              child:Text("Ibrahim ali", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),

            Container(
              height: MediaQuery.of(context).size.height-182,
              color: Colors.grey.withOpacity(0.05),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-300,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
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
                        Icon(Icons.card_giftcard_outlined, color: Color(mainColor), size: 30,),
                        Padding(padding: EdgeInsets.only(right: 10, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("الفئة الخضراء", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'readex', fontSize: 12),),
                              Text("0 نقطة", style: TextStyle(color: Colors.grey, fontFamily: 'readex', fontSize: 12),),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Color(mainColor), size: 15,)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.06),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.person_outline, size: 25, color: Colors.black.withOpacity(0.4),),
                            ),
                            Text("الملف الشخصي", style: TextStyle(fontFamily: 'readex', fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.06),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.support_agent_outlined, size: 25, color: Colors.black.withOpacity(0.4),),
                            ),
                            Text("مركز المساعدة", style: TextStyle(fontFamily: 'readex', fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.06),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.payment_outlined, size: 25, color: Colors.black.withOpacity(0.4),),
                            ),
                            Text("طرق الدفع", style: TextStyle(fontFamily: 'readex', fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.06),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.language, size: 25, color: Colors.black54,),
                            ),
                            Text("اللغة", style: TextStyle(fontFamily: 'readex', fontSize: 10),)
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
                            Text("الرصيد النقدي لدى توترز", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold, fontSize: 12),),
                            SizedBox(width: 6,),
                            Icon(Icons.info_outline, color: Color(mainColor), size: 20,)
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
                            Text("عروض خاصة", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold, fontSize: 12),),
                            SizedBox(width: 6,),
                            Icon(Icons.info_outline, color: Color(mainColor), size: 20,)
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
                        Text("تفاصيل الحساب", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold, fontSize: 12),),
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
                        Text("مركز المساعدة", style: TextStyle(fontFamily: 'readex', fontWeight: FontWeight.bold, fontSize: 12),),
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
                          Icon(Icons.login, size: 25, color: Colors.redAccent,),
                          SizedBox(width: 10,),
                          Text('تسجيل الخروج', style: TextStyle(fontFamily: 'readex', color: Colors.redAccent, fontSize: 12),),
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
                Icon(itemIcon, size: 25, color: Colors.black54,),
                Padding(padding: EdgeInsets.only(right: 10),
                  child: Text(itemName, style: TextStyle(fontFamily: 'readex', fontSize: 12),),
                )
              ],
            ),
            Text(info, style: TextStyle(fontFamily: 'readex', color: Color(mainColor), fontSize: 12),)
          ],
        ),
      ),
    );
  }
}
