import 'dart:convert';

List<Restaurant> restaurantFromJson(String str) =>
    List<Restaurant>.from(json.decode(str).map((x) => Restaurant.fromJson(x)));

String restaurantToJson(List<Restaurant> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Restaurant {
  int? id;
  String? name;
  String? address;
  double? latitude;
  double? longitude;
  String? description;
  Contact? contact;
  List<String>? images;
  OpenHours? openHours;
  Ratings? ratings;
  List<Menu>? menu;
  SellerInfo? sellerInfo;
  List<Review>? reviews;

  Restaurant({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.description,
    this.contact,
    this.images,
    this.openHours,
    this.ratings,
    this.menu,
    this.sellerInfo,
    this.reviews,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        description: json["description"],
        contact: Contact.fromJson(json["contact"]),
        images: List<String>.from(json["images"].map((x) => x)),
        openHours: OpenHours.fromJson(json["open_hours"]),
        ratings: Ratings.fromJson(json["ratings"]),
        menu: List<Menu>.from(json["menu"].map((x) => Menu.fromJson(x))),
        sellerInfo: SellerInfo.fromJson(json["seller_info"]),
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "description": description,
        "contact": contact!.toJson(),
        "images": List<dynamic>.from(images!.map((x) => x)),
        "open_hours": openHours!.toJson(),
        "ratings": ratings!.toJson(),
        "menu": List<dynamic>.from(menu!.map((x) => x.toJson())),
        "seller_info": sellerInfo!.toJson(),
        "reviews": List<dynamic>.from(reviews!.map((x) => x.toJson())),
      };
}

class Contact {
  String? phone;
  String? email;

  Contact({
    this.phone,
    this.email,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        phone: json["phone"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone,
        "email": email,
      };
}

class Menu {
  String? name;
  String? image;
  String? description;
  double? price;
  String? creationTime;

  Menu({
    this.name,
    this.image,
    this.description,
    this.price,
    this.creationTime,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        name: json["name"],
        image: json["image"],
        description: json["description"],
        price: json["price"].toDouble(),
        creationTime: json["creation_time"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "description": description,
        "price": price,
        "creation_time": creationTime,
      };
}

class Ratings {
  double? averageRating;
  int? totalRatings;

  Ratings({
    this.averageRating,
    this.totalRatings,
  });

  factory Ratings.fromJson(Map<String, dynamic> json) => Ratings(
        averageRating: json["average_rating"].toDouble(),
        totalRatings: json["total_ratings"],
      );

  Map<String, dynamic> toJson() => {
        "average_rating": averageRating,
        "total_ratings": totalRatings,
      };
}

class Review {
  String? name;
  String? image;
  double? rating;
  String? reviewText;

  Review({
    this.name,
    this.image,
    this.rating,
    this.reviewText,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        name: json["name"],
        image: json["image"],
        rating: json["rating"].toDouble(),
        reviewText: json["review_text"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "rating": rating,
        "review_text": reviewText,
      };
}

class SellerInfo {
  String? ownerName;
  String? ownerImage;

  SellerInfo({
    this.ownerName,
    this.ownerImage,
  });

  factory SellerInfo.fromJson(Map<String, dynamic> json) => SellerInfo(
        ownerName: json["owner_name"],
        ownerImage: json["owner_image"],
      );

  Map<String, dynamic> toJson() => {
        "owner_name": ownerName,
        "owner_image": ownerImage,
      };
}

class OpenHours {
  String? monday;
  String? tuesday;
  String? wednesday;
  String? thursday;
  String? friday;
  String? saturday;
  String? sunday;

  OpenHours({
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
  });

  factory OpenHours.fromJson(Map<String, dynamic> json) => OpenHours(
        monday: json["monday"],
        tuesday: json["tuesday"],
        wednesday: json["wednesday"],
        thursday: json["thursday"],
        friday: json["friday"],
        saturday: json["saturday"],
        sunday: json["sunday"],
      );

  Map<String, dynamic> toJson() => {
        "monday": monday,
        "tuesday": tuesday,
        "wednesday": wednesday,
        "thursday": thursday,
        "friday": friday,
        "saturday": saturday,
        "sunday": sunday,
      };
}
