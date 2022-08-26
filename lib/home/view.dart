
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:tutrs/resDetails/view.dart';


class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {

  final List<String> listImages = [
    "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
    "https://www.efsa.europa.eu/sites/default/files/styles/share_opengraph/public/2021-03/experts_food_additives.jpg?h=827069f2&itok=Al_Mu6TK",
    "https://www.washingtonian.com/wp-content/uploads/2021/07/2Fiftys-1500x1000.jpg",
    "https://img2.storyblok.com/filters:format(webp)/f/62776/512x256/dd8a3a1d71/chicken-wide.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: Row(
          children: const [
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.candlestick_chart_outlined, color: Colors.black54, size: 30,),
            ),
            Icon(Icons.notifications_active_outlined, color: Colors.black54,),
          ],
        ),
        leadingWidth: 200,
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("توصيل الى", style: TextStyle(color: Colors.black87, fontFamily: 'readex')),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black54),
                    ),
                    Text("المنزل", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontFamily: 'readex'),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
      body:Container(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Row(
                   children: [
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("نقطة", style: TextStyle(fontWeight: FontWeight.w900, fontFamily: 'readex'),),
                        Icon(Icons.arrow_back_rounded)
                      ],
                    ),
                     SizedBox(width: 12,),
                     Text("3.8k", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900, fontFamily: 'readex'),)
                   ],
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.info_outline, size: 30, color: Colors.teal,),
                         SizedBox(width: 5,),
                         Text("الفئة الخضراء", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Colors.teal, fontFamily: 'readex'))
                       ],
                     ),
                     Padding(padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 3.5,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),

                        ],
                      ),
                     ),
                     Container(
                       width: 250,
                       child: Text("تبقى 9 خطوات اضافية لغاية اغسطس 31 للترقية الي الفئة الذهبية", textAlign: TextAlign.right, style: TextStyle(color: Colors.grey, fontFamily: 'readex'),),
                     )
                   ],
                 )
                ],
              ),
            ),
            Container(
              height: 220,
              margin: EdgeInsets.only(bottom: 15),
              child: Swiper(
                itemBuilder: (context, index) {
                  final image = listImages[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)
                    ),
                  );
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                itemCount: listImages.length,
                pagination: const SwiperPagination(),
                viewportFraction: 0.9,
                scale: 0.9,
                loop: true,
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  component(
                      "البقالة",
                    "https://static.vecteezy.com/system/resources/previews/008/550/126/original/3d-illustration-object-icon-shop-market-discount-png.png"
                  ),
                  component(
                      "توترز فريش",
                    "https://cdn3d.iconscout.com/3d/premium/thumb/shopping-cart-and-bags-4049844-3363951.png"
                  ),
                  component(
                      "مطاعم",
                    "https://cdn3d.iconscout.com/3d/premium/thumb/burger-5863026-4897345.png"
                  ),

                ],
              )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  component(
                      "اضف رصيد",
                    "https://cdn3d.iconscout.com/3d/premium/thumb/wallet-3750977-3145186.png"
                  ),
                  component(
                      "المندوب",
                    "https://cdn3d.iconscout.com/3d/premium/thumb/package-delivery-tracking-5045287-4204239.png"
                  ),
                  component(
                      "متاجر",
                      "https://w7.pngwing.com/pngs/624/359/png-transparent-shopping-bag-pizza-restaurant-orange-shopping-bag-food-label-rectangle-thumbnail.png"
                  ),
                ],
              ),
            ),
            Container(
              height: 12,
              color: Colors.grey.shade200,
              margin: EdgeInsets.symmetric(vertical: 20),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back_ios, color: Colors.teal,),
                      Text("خصومات اسبوعية", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20, fontFamily: 'readex'),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text("احصل على خصم 50% على مطاعم هذا الاسبوع", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade500, fontFamily: 'readex')),
                  )
                ],
              ),
            ),

            Container(
              height: 310,
              margin: EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  card(
                      "كاهي فيروز",
                      "https://cdn.familytasty.com/wp-content/uploads/2019/09/الكاهي-العراقي-780x470.jpg"
                  ),
                  card(
                      "ويست برغر",
                      "https://vid.alarabiya.net/images/2021/12/01/53837b46-17fb-4ded-aaa4-3c1b18a6d2fe/53837b46-17fb-4ded-aaa4-3c1b18a6d2fe_16x9_1200x676.jpg?width=372&format=jpg"
                  ),
                  card(
                      "Fire Fire",
                    'https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY=',
                  )
                ],
              ),
            ),
            Container(
              height: 12,
              color: Colors.grey.shade200,
              margin: EdgeInsets.symmetric(vertical: 20),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ButtonBar(
        buttonPadding:  EdgeInsets.symmetric(horizontal: 5),
        alignment: MainAxisAlignment.center,
        children: [
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => home()
            ));
          },
              child:
              Container(
                width: 75,
                height: 70,
                child: Column(
                  children: [
                    Icon(Icons.person_outline, size: 30, color: Colors.grey.shade500),
                    Text("الحساب", style: TextStyle(color: Colors.grey.shade500, fontFamily: 'readex', fontSize: 10),)
                  ],
                ),
              )
          ),
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => home()
            ));
          },
              child:
              Container(
                width: 75,
                height: 70,
                child: Column(
                  children: [
                    Icon(Icons.list_alt_rounded, size: 30, color: Colors.grey.shade500),
                    Text("الطلبات", style: TextStyle(color: Colors.grey.shade500, fontFamily: 'readex', fontSize: 10),)
                  ],
                ),
              )
          ),
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => home()
            ));
          },
              child:
              Container(
                width: 75,
                height: 70,
                child: Column(
                  children: [
                    Icon(Icons.moped_outlined, size: 30, color: Colors.grey.shade500),
                    Text("المندوب", style: TextStyle(color: Colors.grey.shade500, fontFamily: 'readex', fontSize: 10),)
                  ],
                ),
              )
          ),
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => home()
            ));
          },
              child:
              Container(
                width: 75,
                height: 70,
                child: Column(
                  children: [
                    Icon(Icons.search, size: 30, color: Colors.grey.shade500),
                    Text("البحث", style: TextStyle(color: Colors.grey.shade500, fontFamily: 'readex', fontSize: 10),)
                  ],
                ),
              )
          ),
          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => home()
            ));
          },
              child:
              Container(
                width: 75,
                height: 70,
                child: Column(
                  children: [
                    Icon(Icons.home_sharp, size: 30, color: Colors.teal),
                    Text("الرئيسية", style: TextStyle(color: Colors.teal, fontFamily: 'readex', fontSize: 10),)
                  ],
                ),
              )
          ),

        ],
      ),
    );
  }

  Container component(String title, String imageUrl){
    return  Container(
      width: 122,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
            spreadRadius: 1,
            blurRadius: 25,
            offset: Offset(4, 4),
            color: Colors.grey.withOpacity(0.2)
        )],
      ),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Image.network(imageUrl, width: 60,height: 60,),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'readex'),),
          )
        ],
      ),
    );
  }

  Container card(String title, String imageUrl){
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (builder) =>
              resDetails(
                  imageUrl: "https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY=",
                  name: "Fire Fire Al Saydiya",
                  title: "We offer the most delicious burgers with our special and unique American sauces.",
                  des: "10%",
                  time: "36-46",
                  rating: 4.8,
                  numRating: 1200,
                  username: "Adan",
                  comment: "الطعم رهيييب كلش والتوصيل سررريع ان شاء الله مو اخر مرة كلش...."
              )
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 3,
                          color: Colors.grey.shade100
                      )],
                      image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover)
                  ),
                ),
                Positioned(top: 15, left: 10, child: Icon(Icons.favorite_border_outlined, color: Colors.white, size: 30,)),
                Positioned(bottom: -10, left: 10,child: Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 2
                      )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("طلب مسبق", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'readex', fontSize: 10, color: Colors.grey),),
                      Text("٠٨:٢٤ص", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'readex',))
                    ],
                  ),
                )),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87, fontFamily: 'readex'),),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10, right: 10),
              child: Text("فطور . \$\$", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87, fontFamily: 'readex'),),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      children: [
                        Text("اكسب نقاط", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontFamily: 'readex'),),
                        SizedBox(width: 5,),
                        Icon(Icons.add_circle_outline, color: Colors.blue,)
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      children: [
                        Text("4.9", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'readex'),),
                        SizedBox(width: 5,),
                        Icon(Icons.star, color: Colors.teal,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

