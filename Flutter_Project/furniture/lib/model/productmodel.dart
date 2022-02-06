class ProductModel {
  String? id;
  String? productName;
  String? imageUrl;
  String? description;
  int? price;
  String? Category;
  String? brandname;
  int? quantity;

  ProductModel({this.id, this.productName, this.imageUrl, this.description,
      this.price, this.Category, this.brandname, this.quantity});
}

class CategoriModel {
  String? categoriName;

  CategoriModel({this.categoriName});
}

class BrandModel{
  String? brandName;
  BrandModel({this.brandName});
}