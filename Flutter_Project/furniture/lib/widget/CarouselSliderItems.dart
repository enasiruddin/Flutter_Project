import 'package:flutter/material.dart';

Widget CarouselSliderItems( BuildContext context, String imgUrl){
  Size size = MediaQuery.of(context).size;
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: 'Online', style: TextStyle(color: Colors.orange , fontSize: size.width*0.06)),
            TextSpan(text: '-Shopping', style: TextStyle(color: Colors.grey, fontSize: size.width*0.06))
          ],
        ),
      ),
      Text("The best site for shopping you'll ever visit! We sell quality products at reasonable price.", style: TextStyle(fontSize: size.width*0.04), textAlign: TextAlign.justify,),
      Expanded(
        child: Container(
          width: size.width,
          child: Image.asset('$imgUrl', fit: BoxFit.fill,),
        ),
      ),
    ],
  );
}