/// id : 11
/// title : "perfume Oil"
/// price : 13
/// thumbnail : "https://cdn.dummyjson.com/product-images/11/thumbnail.jpg"

class Product {

  num? id;
  String? title;
  num? price;
  String? thumbnail;

  Product({
      this.id, 
      this.title, 
      this.price, 
      this.thumbnail,});

  Product.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['price'] = price;
    map['thumbnail'] = thumbnail;
    return map;
  }

}