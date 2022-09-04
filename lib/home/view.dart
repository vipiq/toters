
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:tutrs/resDetails/view.dart';


class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {

  String logo = "https://images.squarespace-cdn.com/content/v1/570b5c4162cd9478edc625af/1587042359495-DT89KU48IBU7YDMOQ89Z/LOGO+GREEN-01.png";
  var mainColor = 0XFF12b699;
  final List<String> listImages = [
    "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
    "https://www.efsa.europa.eu/sites/default/files/styles/share_opengraph/public/2021-03/experts_food_additives.jpg?h=827069f2&itok=Al_Mu6TK",
    "https://www.washingtonian.com/wp-content/uploads/2021/07/2Fiftys-1500x1000.jpg",
    "https://img2.storyblok.com/filters:format(webp)/f/62776/512x256/dd8a3a1d71/chicken-wide.jpg"
  ];

  List <Restorant> dataList = [
    Restorant(
        imageUrl: 'https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY=',
        name: "ويست برغر",
        type: "برجر",
        des: "des",
        rating: 4.8,
        discount: 10,
        deliverTime: "64-34",
        food: "food",
        location: "",
        state: "state",
        deleverPrice: 5000,
        price: 7000
    ),
    Restorant(
        imageUrl: "https://vid.alarabiya.net/images/2021/12/01/53837b46-17fb-4ded-aaa4-3c1b18a6d2fe/53837b46-17fb-4ded-aaa4-3c1b18a6d2fe_16x9_1200x676.jpg?width=372&format=jpg",
        name: "Fire Fire",
        type: "برجر",
        des: "des",
        rating: 4.8,
        discount: 10,
        deliverTime: "64-34",
        food: "food",
        location: "",
        state: "state",
        deleverPrice: 5000,
        price: 7000
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("توصيل الى", style: TextStyle(color: Colors.black87, fontFamily: 'readex', fontSize: 12)),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black54),
                    ),
                    Text("بغداد، العراق", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontFamily: 'readex', fontSize: 12),)
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
                        Text("نقطة", style: TextStyle( fontFamily: 'readex', fontSize: 10),),
                        Icon(Icons.arrow_back_rounded, size: 20,)
                      ],
                    ),
                     SizedBox(width: 12,),
                     Text("0", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'readex'),)
                   ],
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.info_outline, size: 20, color: Color(mainColor),),
                         SizedBox(width: 5,),
                         Text("الفئة الخضراء", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(mainColor), fontFamily: 'readex'))
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
                                color: Color(mainColor),
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),

                        ],
                      ),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width-100,
                       child: Text("تبقى 10 طلبات اضافية لغاية سبتمبر 30 للترقية الي الفئة الذهبية", textAlign: TextAlign.right, style: TextStyle(color: Colors.grey, fontFamily: 'readex', fontSize: 10),),
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

                viewportFraction: 0.92,
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
                    children: [
                      Icon(Icons.arrow_back_ios, color: Color(mainColor), size: 15,),
                      Text("خصومات الاسبوعية", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18, fontFamily: 'readex'),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text("احصل على خصم 50% على مطاعم هذا الاسبوع", style: TextStyle(color: Colors.grey.shade500, fontFamily: 'readex', fontSize: 12)),
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
    );
  }

  Container component(String title, String imageUrl){
    return  Container(
      width: 122,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
            spreadRadius: 1,
            blurRadius: 5,
            color: Colors.grey.withOpacity(0.1)
        )],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, width: 60,height: 60,),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Text(title, style: TextStyle(fontSize: 10, fontFamily: 'readex'),),
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
                  height: 160,
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
                Positioned(bottom: -5, left: 15,child: Container(
                  width: 65,
                  height: 40,
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
                      Text("١٧ - ٢٧", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'readex',)),
                      Text("دقائق", style: TextStyle( fontFamily: 'readex', fontSize: 9, color: Colors.grey),),
                    ],
                  ),
                )),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black87, fontFamily: 'readex'),),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10, right: 10),
              child: Text("فطور . \$\$", style: TextStyle(fontSize: 10, color: Colors.black87, fontFamily: 'readex'),),
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
                        Text("اكسب نقاط", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontFamily: 'readex', fontSize: 10),),
                        SizedBox(width: 5,),
                        Icon(Icons.add_circle_outline, color: Colors.blue, size: 15,)
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      children: [
                        Text("30% خصم", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange, fontFamily: 'readex', fontSize: 10),),
                        SizedBox(width: 5,),
                        Icon(Icons.local_offer_outlined, color: Colors.deepOrange, size: 15,)
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      children: [
                        Text("4.9", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'readex', fontSize: 10),),
                        SizedBox(width: 5,),
                        Icon(Icons.star, color: Color(mainColor), size: 18,)
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

class Restorant{
  String imageUrl;
  String name;
  String type;
  String des;
  double rating;
  int discount;
  String deliverTime;
  String food;
  String location;
  String state;
  int deleverPrice;
  int price;

  Restorant({
  required this.imageUrl,
  required this.name,
  required this.type,
  required this.des,
  required this.rating,
  required this.discount,
  required this.deliverTime,
  required this.food,
  required this.location,
  required this.state,
  required this.deleverPrice,
  required this.price
});

}

