class ProductDataModel {
  String imageUrl;
  String name;
  String ratings;
  String description;
  Seller seller;
  String time;
  List<AvailableIn>? available_in;

  ProductDataModel(this.imageUrl, this.name, this.ratings, this.description,
      this.seller, this.time,
      {this.available_in});

  factory ProductDataModel.fromJson(Map<String, dynamic> json) {
    return ProductDataModel(
      json['imageUrl'],
      json['name'],
      json['ratings'],
      json['description'],
      Seller.fromJson(json['seller']),
      json['time'],
      available_in: (json['available_in'] as List<dynamic>)
          .map((item) => AvailableIn.fromJson(item))
          .toList(),
    );
  }
}

class Seller {
  String name;
  String type;
  String image;
  String restaurant_name;

  Seller(this.name, this.type, this.image, this.restaurant_name);

  factory Seller.fromJson(Map<String, dynamic> json) {
    return Seller(
      json['name'],
      json['type'],
      json['image'],
      json['restaurant_name'],
    );
  }
}

class AvailableIn {
  String type;
  String price;

  AvailableIn(this.type, this.price);

  factory AvailableIn.fromJson(Map<String, dynamic> json) {
    return AvailableIn(
      json['type'],
      json['price'],
    );
  }
}
