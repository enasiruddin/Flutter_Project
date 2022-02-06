
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture/data/products.dart';
import 'package:furniture/model/productmodel.dart';
import 'package:furniture/widget/CarouselSliderItems.dart';
import 'package:furniture/widget/allProductList.dart';
import 'package:furniture/widget/appBarWidget.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key, required this.title}) : super(key: key);
  String? title;
  HomePage(this.title);

 List<CategoriModel> Categories = CategoriData().Categories;
 List<BrandModel> Brand = BrandData().Brands;
 List<ProductModel> Poducts = ProductsData().Products;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidget("Furniture"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 5,),
            CarouselSlider(
              items: [
                  CarouselSliderItems(context, "assets/images/slide1.jpg"),
                  CarouselSliderItems(context, "assets/images/slide2.jpg"),
                  CarouselSliderItems(context, "assets/images/slide3.JPG"),
                  CarouselSliderItems(context, "assets/images/slide4.JPG"),
                  CarouselSliderItems(context, "assets/images/slide4.JPG"),
                  CarouselSliderItems(context, "assets/images/slide4.JPG"),
              ],
              options: CarouselOptions(
                initialPage: 0,
                height: MediaQuery.of(context).size.height*0.35,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16/9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 1200),
                viewportFraction: 0.8,


              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                border: Border.all(width: 5),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text("Brand", style: TextStyle(color: Colors.white, fontSize: size.width*0.04),),
                  GridView.builder(
                    shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5
                  ),
                      itemCount: Brand.length,
                      itemBuilder: (context, index){
                    return Card(
                      child: Center(child: Text("${Brand[index].brandName}", style: TextStyle(),)),
                    );
                  })
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                border: Border.all(width: 5),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text("Categories", style: TextStyle(color: Colors.white, fontSize: size.width*0.04),),
            ),
            SizedBox(height: 10,),
            GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5
                ),
                itemCount: Categories.length,
                itemBuilder: (context, index){
                  return Card(
                    color: Colors.black54,
                    child: Center(child: Text("${Categories[index].categoriName}", style: TextStyle(color: Colors.white),)),
                  );
                }),
            SizedBox(height: 10,),



          //...........................All Product list.........................
            Container(
              padding: EdgeInsets.all(8),
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 5),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text("All Products", style: TextStyle(color: Colors.white, fontSize: size.width*0.04),),
            ),
            SizedBox(height: 10,),
            AllProductListUI(context, Poducts),
            SizedBox(height: 5,),




          //..................... Footer part ..........................................
            Container(
              padding: EdgeInsets.all(8),
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 5),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Furniture', style: TextStyle(color: Colors.white , fontSize: size.width*0.09)),
                        TextSpan(text: 'Home', style: TextStyle(color: Colors.blue, fontSize: size.width*0.09))
                      ],
                    ),
                  ),
                  Text("Home . Brand . Catagory . Contact", style: TextStyle(color: Colors.white),),
                  Text("Furniture Home @2022", style: TextStyle(color: Colors.grey),),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.location_on_outlined, color: Colors.white,),
                    ),
                    title: Text("Gobindagong", style: TextStyle(fontSize: size.width*0.03, color: Colors.white)),
                    subtitle: Text("Rangpur, Bangladesh", style: TextStyle(fontSize: size.width*0.03, color: Colors.white),),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.phone, color: Colors.white,),
                    ),
                    title: Text("+8801738439104", style: TextStyle(fontSize: size.width*0.03, color: Colors.white)),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.mail, color: Colors.white,),
                    ),
                    title: Text("furniturehome@gmail.com", style: TextStyle(fontSize: size.width*0.03, color: Colors.white)),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(FontAwesomeIcons.facebook, size: 30, color: Colors.white,),
                      Icon(FontAwesomeIcons.twitter, size: 30, color: Colors.white,),
                      Icon(FontAwesomeIcons.linkedin, size: 30, color: Colors.white,),
                      Icon(FontAwesomeIcons.github, size: 30, color: Colors.white,),
                    ],
                  ),
                )
                ],
              ),
            ),

          ],
        ),
      ) ,
    );
  }


}

