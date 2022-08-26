import 'package:flutter/material.dart';

class resDetails extends StatefulWidget {

final String imageUrl;
final String name;
final String title;
final String des;
final String time;
final double rating;
final int numRating;
final String username;
final String comment;

resDetails({
  required this.imageUrl,
  required this.name,
  required this.title,
  required this.des,
  required this.time,
  required this.rating,
  required this.numRating,
  required this.username,
  required this.comment,
});


  @override
  State<resDetails> createState() => _resDetailsState();
}

class _resDetailsState extends State<resDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: NetworkImage(widget.imageUrl),)
                  ),
                ),
                Positioned(bottom: -10, right: 15, child: Container(
                  width: 75,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0.2,
                      blurRadius: 1
                    )]
                  ),
                  child: Column(
                    children: [
                      Text(widget.time, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("mins", style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 10),
                  child: Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10),
                    child: Text(widget.title, style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w400),),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.monetization_on_outlined, color: Colors.orangeAccent.shade700,),
                              SizedBox(width: 2,),
                              Text("${widget.des} cashback", style: TextStyle(color: Colors.orangeAccent.shade700, fontWeight: FontWeight.bold, fontSize: 13),)
                            ],
                          ),
                        ),
                        SizedBox(width: 12,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.add_circle_outline, color: Colors.blue.shade700,),
                              SizedBox(width: 2,),
                              Text("Earn Points", style: TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold, fontSize: 13),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 10),
                            child: Text("${widget.rating}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star_rate_rounded, color: Colors.teal, size: 35,),
                                  Icon(Icons.star_rate_rounded, color: Colors.teal, size: 35,),
                                  Icon(Icons.star_rate_rounded, color: Colors.teal, size: 35,),
                                  Icon(Icons.star_rate_rounded, color: Colors.teal, size: 35,),
                                  Icon(Icons.star_rate_rounded, color: Colors.grey.shade300,size: 35,),
                                ],
                              ),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Text("Based on ${widget.numRating} rating", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12),),
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.teal,)
                    ],
                  ),
                  ),
                  Container(
                    width: 400,
                    height: 1.2,
                    margin: EdgeInsets.only(bottom: 10, top: 4),
                    color: Colors.grey.shade300,
                  ),
                  comments()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container comments(){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(right: 10),
                child: Text(widget.username, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              ),
              Icon(Icons.star, color: Colors.teal, size: 20,),
              Icon(Icons.star, color: Colors.teal, size: 20,),
              Icon(Icons.star, color: Colors.teal, size: 20,),
              Icon(Icons.star, color: Colors.teal, size: 20,),
              Icon(Icons.star, color: Colors.teal, size: 20,),
            ],
          ),
          SizedBox(height: 6,),
          Text(widget.comment, style: TextStyle(color: Colors.grey, fontFamily: 'readex',), textAlign: TextAlign.right,),
          Container(
            width: 400,
            height: 1.2,
            margin: EdgeInsets.only(bottom: 10, top: 10),
            color: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }

}
