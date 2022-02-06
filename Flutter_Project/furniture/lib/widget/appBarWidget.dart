import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget AppBarWidget( String title){
   return AppBar(
     // title: Text("$title", style: TextStyle(color: Colors.orange),),
     title:  Image.asset(
       "assets/images/fhome.png",
     ),
     centerTitle: true,
     backgroundColor: Colors.white,
     actions: [
       IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.red, size: 30,)),
       IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Colors.red, size: 30,)),

     ],
   );
}