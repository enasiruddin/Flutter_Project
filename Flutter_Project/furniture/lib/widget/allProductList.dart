import 'package:flutter/material.dart';
import 'package:furniture/model/productmodel.dart';
import 'package:furniture/pages/product_details.dart';

Widget AllProductListUI (BuildContext context, List<ProductModel> Products){
  Size size = MediaQuery.of(context).size;

  return GridView.builder(
    shrinkWrap: true,
    physics: ScrollPhysics(),
    padding: EdgeInsets.all(10.0),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      // childAspectRatio: 3/2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      mainAxisExtent: size.height*0.5,
    ),
    itemCount: Products.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails(index)));
        },
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Colors.orange,
                width: 2,
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Image.asset("${Products[index].imageUrl}", fit: BoxFit.cover,)),
              SizedBox(height: 2,),
              Text("${Products[index].productName}", style: TextStyle(fontSize: size.width*0.04, color: Colors.blue, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              SizedBox(height: 2,),
              Text("${Products[index].price}/=", style: TextStyle(fontSize: size.width*0.035, color: Colors.orange, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              SizedBox(height: 5,),
              Text("Category : ${Products[index].Category}", style: TextStyle(fontSize: size.width*0.025, color: Colors.grey, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.white, ),
                    Text("View Details", style: TextStyle(color: Colors.white),),
                  ],
                ),
              )


            ],
          ),
        ),
      ) ;
    },

  );
}