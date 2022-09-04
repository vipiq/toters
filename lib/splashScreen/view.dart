import 'package:flutter/material.dart';
import 'package:tutrs/home/view.dart';

class splash extends StatefulWidget {


  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  String logo = "https://images.squarespace-cdn.com/content/v1/570b5c4162cd9478edc625af/1587042359495-DT89KU48IBU7YDMOQ89Z/LOGO+GREEN-01.png";
  var mainColor = 0XFF12b699;

  Future Delay() async {
    await new Future.delayed(Duration(seconds: 4), (){
      Navigator.push(context, MaterialPageRoute(builder: (builder) => home()));
    });
  }

  @override
  void initState() {
    Delay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(logo, width: 380,),
      ),
    );
  }
}
