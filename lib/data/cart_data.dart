class CartData {
  static List<Map<String, dynamic>> cartData = [
    {
      "imageUrl": "assets/images/coffee_1.jpg",
      "name": "Cappuccino",
      "type": "Coffee",
      "quantity": 2,
      "coffee_type": "Hot",
      "pricing": {
        "default_price": "16.00",
        "size": {"size": "Medium", "price": "1.50"},
        "sugar": {"sugar": "Moderate", "price": "1.00"},
        "syrup": {"syrup": "Chocolate", "price": "1.00"},
        "toppings": {"toppings": "Cocoa", "price": "1.00"},
      }
    },
    {
      "imageUrl": "assets/images/coffee_3.jpg",
      "name": "Iced Latte",
      "type": "Coffee",
      "coffee_type": "Cold",
      "quantity": 5,
      "pricing": {
        "default_price": "10.00",
        "size": {"size": "Medium", "price": "1.50"},
        "sugar": {"sugar": "Moderate", "price": "1.00"},
        "syrup": {"syrup": "", "price": ""},
        "toppings": {"toppings": "", "price": ""},
      }
    }
  ];
}
