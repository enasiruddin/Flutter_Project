import 'package:flutter/material.dart';
import 'package:furniture/data/products.dart';
import 'package:furniture/model/productmodel.dart';
import 'package:furniture/widget/appBarWidget.dart';

class ProductDetails extends StatelessWidget {
  // const ProductDetails({Key? key}) : super(key: key);
  var index;
  ProductDetails(this.index);

  List<ProductModel> Poducts = ProductsData().Products;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidget("Furniture Home"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              child: Image.asset("${Poducts[index].imageUrl}", fit: BoxFit.fill,),
            ),
            SizedBox(height: 10),
            SizedBox(height: 2,),
            Text("${Poducts[index].productName}", style: TextStyle(fontSize: size.width*0.04, color: Colors.blue, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 2,),
            Text("Price : ${Poducts[index].price} tk", style: TextStyle(fontSize: size.width*0.035, color: Colors.orange, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 5,),
            Text("Category : ${Poducts[index].Category}", style: TextStyle(fontSize: size.width*0.025, color: Colors.grey, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 5,),
            Text("Available : 4 Pcs", style: TextStyle(fontSize: size.width*0.025, color: Colors.grey, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 5,),
            Container(
              width: size.width*0.05,
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
                  Text("Add to Cart", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Text("Description : ${Poducts[index].description}", style: TextStyle(fontSize: size.width*0.025, color: Colors.grey, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
            SizedBox(height: 5,),
            Text("Contact Info : 01738439104", style: TextStyle(fontSize: size.width*0.025, color: Colors.grey, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
            SizedBox(height: 5,),
            Text("Email : furniturehome@gmail.com", style: TextStyle(fontSize: size.width*0.025, color: Colors.grey, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
            SizedBox(height: 5,),




          ],
        ),
      ),
    );
  }
}
