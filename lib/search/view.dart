import 'package:flutter/material.dart';

import '../delivery/view.dart';
import '../home/view.dart';
import '../orders/view.dart';
import '../profile/view.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  var mainColor = 0XFF12b699;
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Directionality(textDirection: TextDirection.rtl,
          child: Column(

            children: [
              Container(
                height: 105,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                color: Colors.white,
                child: Container(
                  height: 35,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.18),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: TextFormField(
                      initialValue: search,
                      onChanged: (e){
                        setState(() {
                          search = e;
                        });
                      },
                      decoration: InputDecoration(
                        focusColor: Color(mainColor),
                        hintText: "البحث عن متجر او صنف",
                        hintStyle: TextStyle(height: 1.3, color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey,),
                      ),
                      cursorColor: Color(mainColor),
                      style: TextStyle( fontFamily: 'readex', fontSize: 14),
                    ),)
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height-195,
                child: ListView(
                  padding: EdgeInsets.zero,
                    children: [
                      Container(
                        height: 88,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: Color(mainColor)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("images/vector.png", width: 80),
                            Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('اطلب اي شئ!', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'readex', fontSize: 14, color: Colors.white),),
                            Padding(padding: EdgeInsets.only(top: 10),
                              child: Text("جديدنا على توترز! اذا يسع على دراجة نارية يمكننا توصيله.", style: TextStyle( fontFamily: 'readex', fontSize: 10, color: Colors.white),),
                            ),
                          ],
                        ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,)
                          ],
                        ),
                      ),
                      item(
                          "https://thumbs.dreamstime.com/b/pop-corn-pastel-color-background-food-snack-concepts-ideas-minimal-style-pop-corn-pastel-color-background-food-snack-139429543.jpg",
                          "خصومات اسبوعية",
                          "سعادتك تكمل ويانا مع خصومات تصل الى 50% حتى الساعة 7",
                          33
                      )
                    ],
                    ),
              )
            ],
          ),
      ),

    );
  }

  Container item (
      String imageUrl,
      String title,
      String des,
      int num
      ){
    return Container(
      height: 120,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(

        children: [
          Container(
            width: 180,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(imageUrl))
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 210,
            margin: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'readex', fontSize: 16),),
                Padding(padding: EdgeInsets.symmetric(vertical: 7),
                  child: Text(des, style: TextStyle( fontFamily: 'readex', fontSize: 13, color: Colors.black87),),
                ),
                Text("$num متاجر", style: TextStyle( fontFamily: 'readex', fontSize: 12, color: Color(mainColor)),),
              ],
            ),
          )
        ],
      ),
    );
  }

}
