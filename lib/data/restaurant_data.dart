class RestaurantData {
  static List<Map<String, dynamic>> restaurantData = [
    {
      "id": 1,
      "name": "Espresso Express",
      "address": "717 Coffee St, Bean Town, CA 91128",
      "latitude": 34.226764,
      "longitude": -118.574085,
      "description":
          "A perfect stop for a quick coffee and light bites. Java Junction is a neighborhood favorite, known for its fast and friendly service. The menu includes a variety of coffee drinks, from strong espressos to sweet lattes, as well as a selection of pastries and snacks. Whether you're on your way to work or just need a quick pick-me-up, Java Junction has you covered. The caf\u00e9's convenient location and affordable prices make it a popular choice for busy professionals and students alike.",
      "contact": {"phone": "+1-255-879-9910", "email": "contact29@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.6, "total_ratings": 112},
      "menu": [
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 1",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        }
      ]
    },
    {
      "id": 2,
      "name": "Cafe Aroma",
      "address": "827 Coffee St, Bean Town, CA 97453",
      "latitude": 34.009091,
      "longitude": -118.449584,
      "description":
          "Your caffeine fix is just around the corner. Caffeine Fix is a trendy coffee shop that specializes in bold, flavorful coffee drinks. The menu features a variety of options, from classic black coffee to more elaborate creations like caramel macchiatos and mocha frappes. The caf\u00e9 also offers a selection of pastries, sandwiches, and salads, making it a great spot for a quick bite. With its modern d\u00e9cor and upbeat atmosphere, Caffeine Fix is a popular choice for young professionals and students.",
      "contact": {"phone": "+1-952-981-3080", "email": "contact8@example.com"},
      "images": [
        "https://www.posist.com/restaurant-times/wp-content/uploads/2023/07/How-To-Start-A-Coffee-Shop-Business-A-Complete-Guide.jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.5, "total_ratings": 368},
      "menu": [
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 2",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        }
      ]
    },
    {
      "id": 3,
      "name": "Roast House",
      "address": "189 Coffee St, Bean Town, CA 90221",
      "latitude": 34.67883,
      "longitude": -118.752287,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-867-631-2748", "email": "contact31@example.com"},
      "images": [
        "https://coffeebusiness.com/wp-content/uploads/2019/08/14tenents-pt2.jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.9, "total_ratings": 428},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 3",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 4,
      "name": "The Daily Grind",
      "address": "961 Coffee St, Bean Town, CA 98607",
      "latitude": 34.686914,
      "longitude": -118.809146,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-465-292-2297", "email": "contact10@example.com"},
      "images": [
        "https://www.industville.co.uk/cdn/shop/articles/Farmers_Mistress_9635.jpg?v=1666253848",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.6, "total_ratings": 486},
      "menu": [
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 4",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 5,
      "name": "Coffee Corner",
      "address": "129 Coffee St, Bean Town, CA 90804",
      "latitude": 34.532629,
      "longitude": -118.848913,
      "description":
          "A perfect stop for a quick coffee and light bites. Java Junction is a neighborhood favorite, known for its fast and friendly service. The menu includes a variety of coffee drinks, from strong espressos to sweet lattes, as well as a selection of pastries and snacks. Whether you're on your way to work or just need a quick pick-me-up, Java Junction has you covered. The caf\u00e9's convenient location and affordable prices make it a popular choice for busy professionals and students alike.",
      "contact": {"phone": "+1-433-227-9716", "email": "contact45@example.com"},
      "images": [
        "https://images.edrawmax.com/article2023/coffee-shop-org-chart/organizational-structure-of-coffee-shop.jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.6, "total_ratings": 398},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 5",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        }
      ]
    },
    {
      "id": 6,
      "name": "Caffeine Fix",
      "address": "687 Coffee St, Bean Town, CA 93934",
      "latitude": 34.777175,
      "longitude": -118.047978,
      "description":
          "A cozy coffeehouse offering a wide range of specialty coffee drinks, teas, and freshly baked pastries. This place is perfect for catching up with friends, working remotely, or just taking a break from the hustle and bustle of daily life. The inviting atmosphere, friendly staff, and excellent coffee make it a popular spot among locals. Whether you're in the mood for a rich espresso, a creamy latte, or a refreshing iced coffee, Brewed Bliss Coffeehouse has something to satisfy your cravings.",
      "contact": {"phone": "+1-254-701-2398", "email": "contact19@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.8, "total_ratings": 476},
      "menu": [
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 6",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 7,
      "name": "Brews Brothers",
      "address": "145 Coffee St, Bean Town, CA 93500",
      "latitude": 34.581624,
      "longitude": -118.86482,
      "description":
          "Relax and enjoy a latte in our comfortable lounge. Latte Lounge is designed for those who appreciate the finer things in life. The caf\u00e9 offers a curated selection of coffee drinks, teas, and specialty lattes, all made with high-quality ingredients. The interior is chic and sophisticated, with plush seating and stylish d\u00e9cor that make it the perfect place to unwind after a long day. Whether you're meeting a friend for coffee or looking for a quiet spot to read a book, Latte Lounge is the place to be.",
      "contact": {"phone": "+1-277-754-2019", "email": "contact27@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.9, "total_ratings": 314},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 7",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 8,
      "name": "Brews Brothers",
      "address": "470 Coffee St, Bean Town, CA 94433",
      "latitude": 34.19702,
      "longitude": -118.609552,
      "description":
          "Your go-to place for a variety of mocha-based drinks and delicious pastries. Caf\u00e9 Mocha offers a cozy atmosphere where you can enjoy your favorite mocha creations, from classic chocolatey mochas to more adventurous flavors like mint or caramel. The caf\u00e9 also serves a selection of freshly baked goods, including croissants, muffins, and cookies, making it the perfect spot for a morning treat or an afternoon indulgence. With its friendly staff and inviting ambiance, Caf\u00e9 Mocha is a must-visit for anyone with a sweet tooth.",
      "contact": {"phone": "+1-404-383-1993", "email": "contact2@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.2, "total_ratings": 374},
      "menu": [
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 8",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 9,
      "name": "Java House",
      "address": "821 Coffee St, Bean Town, CA 96932",
      "latitude": 34.807274,
      "longitude": -118.299599,
      "description":
          "Your caffeine fix is just around the corner. Caffeine Fix is a trendy coffee shop that specializes in bold, flavorful coffee drinks. The menu features a variety of options, from classic black coffee to more elaborate creations like caramel macchiatos and mocha frappes. The caf\u00e9 also offers a selection of pastries, sandwiches, and salads, making it a great spot for a quick bite. With its modern d\u00e9cor and upbeat atmosphere, Caffeine Fix is a popular choice for young professionals and students.",
      "contact": {"phone": "+1-903-464-4422", "email": "contact11@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.6, "total_ratings": 204},
      "menu": [
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 9",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        }
      ]
    },
    {
      "id": 10,
      "name": "Coffee Corner",
      "address": "297 Coffee St, Bean Town, CA 94406",
      "latitude": 34.351256,
      "longitude": -118.00493,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-352-545-2170", "email": "contact8@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.8, "total_ratings": 292},
      "menu": [
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 10",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 11,
      "name": "Coffee Corner",
      "address": "416 Coffee St, Bean Town, CA 93013",
      "latitude": 34.692107,
      "longitude": -118.994838,
      "description":
          "We brew the best beans to give you a flavorful experience. Bean Brew is dedicated to sourcing the finest coffee beans from around the world and roasting them to perfection. The caf\u00e9 offers a wide range of coffee drinks, from traditional espressos to creative lattes, all made with freshly roasted beans. The interior is cozy and inviting, with plenty of seating for those who want to relax and enjoy their coffee. Whether you're a coffee connoisseur or just looking for a great cup of joe, Bean Brew has something for everyone.",
      "contact": {"phone": "+1-755-882-3327", "email": "contact44@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.4, "total_ratings": 493},
      "menu": [
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 11",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 12,
      "name": "Coffee Corner",
      "address": "485 Coffee St, Bean Town, CA 99211",
      "latitude": 34.39178,
      "longitude": -118.637726,
      "description":
          "Relax and enjoy a latte in our comfortable lounge. Latte Lounge is designed for those who appreciate the finer things in life. The caf\u00e9 offers a curated selection of coffee drinks, teas, and specialty lattes, all made with high-quality ingredients. The interior is chic and sophisticated, with plush seating and stylish d\u00e9cor that make it the perfect place to unwind after a long day. Whether you're meeting a friend for coffee or looking for a quiet spot to read a book, Latte Lounge is the place to be.",
      "contact": {"phone": "+1-719-334-6166", "email": "contact23@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 5.0, "total_ratings": 447},
      "menu": [
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 12",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 13,
      "name": "Cafe Aroma",
      "address": "738 Coffee St, Bean Town, CA 94088",
      "latitude": 34.205427,
      "longitude": -118.665401,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-333-127-2303", "email": "contact18@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.8, "total_ratings": 404},
      "menu": [
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 13",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        }
      ]
    },
    {
      "id": 14,
      "name": "Java Junction",
      "address": "668 Coffee St, Bean Town, CA 99574",
      "latitude": 34.532898,
      "longitude": -118.066848,
      "description":
          "A cozy coffeehouse offering a wide range of specialty coffee drinks, teas, and freshly baked pastries. This place is perfect for catching up with friends, working remotely, or just taking a break from the hustle and bustle of daily life. The inviting atmosphere, friendly staff, and excellent coffee make it a popular spot among locals. Whether you're in the mood for a rich espresso, a creamy latte, or a refreshing iced coffee, Brewed Bliss Coffeehouse has something to satisfy your cravings.",
      "contact": {"phone": "+1-555-215-6575", "email": "contact20@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.8, "total_ratings": 445},
      "menu": [
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 14",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 16,
      "name": "Coffee Corner",
      "address": "740 Coffee St, Bean Town, CA 94766",
      "latitude": 34.845154,
      "longitude": -118.945242,
      "description":
          "Your caffeine fix is just around the corner. Caffeine Fix is a trendy coffee shop that specializes in bold, flavorful coffee drinks. The menu features a variety of options, from classic black coffee to more elaborate creations like caramel macchiatos and mocha frappes. The caf\u00e9 also offers a selection of pastries, sandwiches, and salads, making it a great spot for a quick bite. With its modern d\u00e9cor and upbeat atmosphere, Caffeine Fix is a popular choice for young professionals and students.",
      "contact": {"phone": "+1-438-599-9904", "email": "contact15@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.7, "total_ratings": 228},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 15",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        }
      ]
    },
    {
      "id": 17,
      "name": "The Daily Grind",
      "address": "266 Coffee St, Bean Town, CA 91330",
      "latitude": 34.204556,
      "longitude": -118.947641,
      "description":
          "An urban coffee spot with a modern vibe, offering fresh brews, artisan snacks, and a space that invites relaxation. The interior is sleek and minimalist, making it a perfect backdrop for your next Instagram post. The baristas are known for their attention to detail and passion for coffee, ensuring that each cup is brewed to perfection. With a variety of seating options, including cozy corners and communal tables, Urban Grind is a great place to meet up with friends or get some work done.",
      "contact": {"phone": "+1-735-433-6487", "email": "contact28@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.3, "total_ratings": 310},
      "menu": [
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 16",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 18,
      "name": "Grounds & Grinds",
      "address": "215 Coffee St, Bean Town, CA 93244",
      "latitude": 34.046684,
      "longitude": -118.181565,
      "description":
          "Relax and enjoy a latte in our comfortable lounge. Latte Lounge is designed for those who appreciate the finer things in life. The caf\u00e9 offers a curated selection of coffee drinks, teas, and specialty lattes, all made with high-quality ingredients. The interior is chic and sophisticated, with plush seating and stylish d\u00e9cor that make it the perfect place to unwind after a long day. Whether you're meeting a friend for coffee or looking for a quiet spot to read a book, Latte Lounge is the place to be.",
      "contact": {"phone": "+1-997-409-7597", "email": "contact41@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.6, "total_ratings": 143},
      "menu": [
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 17",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 19,
      "name": "Java House",
      "address": "857 Coffee St, Bean Town, CA 90583",
      "latitude": 34.281684,
      "longitude": -118.329561,
      "description":
          "Relax and enjoy a latte in our comfortable lounge. Latte Lounge is designed for those who appreciate the finer things in life. The caf\u00e9 offers a curated selection of coffee drinks, teas, and specialty lattes, all made with high-quality ingredients. The interior is chic and sophisticated, with plush seating and stylish d\u00e9cor that make it the perfect place to unwind after a long day. Whether you're meeting a friend for coffee or looking for a quiet spot to read a book, Latte Lounge is the place to be.",
      "contact": {"phone": "+1-615-518-3423", "email": "contact5@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.1, "total_ratings": 328},
      "menu": [
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 18",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 20,
      "name": "Caffeine Fix",
      "address": "472 Coffee St, Bean Town, CA 94094",
      "latitude": 34.053252,
      "longitude": -118.12726,
      "description":
          "We brew the best beans to give you a flavorful experience. Bean Brew is dedicated to sourcing the finest coffee beans from around the world and roasting them to perfection. The caf\u00e9 offers a wide range of coffee drinks, from traditional espressos to creative lattes, all made with freshly roasted beans. The interior is cozy and inviting, with plenty of seating for those who want to relax and enjoy their coffee. Whether you're a coffee connoisseur or just looking for a great cup of joe, Bean Brew has something for everyone.",
      "contact": {"phone": "+1-967-331-4682", "email": "contact48@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.5, "total_ratings": 180},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 19",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        }
      ]
    },
    {
      "id": 21,
      "name": "Bean Brew",
      "address": "706 Coffee St, Bean Town, CA 96352",
      "latitude": 34.145818,
      "longitude": -118.116942,
      "description":
          "A cozy spot to enjoy your favorite coffee and relax. Steamy Beans Caf\u00e9 is known for its laid-back vibe and friendly service. The caf\u00e9 offers a wide range of coffee drinks, from rich espressos to creamy lattes, as well as a selection of teas and hot chocolates. The menu also includes a variety of pastries, sandwiches, and salads, all made with fresh, high-quality ingredients. Whether you're looking for a place to catch up with friends or just want to enjoy a quiet moment with a good book, Steamy Beans Caf\u00e9 is the perfect spot.",
      "contact": {"phone": "+1-252-799-8208", "email": "contact16@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.8, "total_ratings": 461},
      "menu": [
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 20",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 22,
      "name": "Brews Brothers",
      "address": "362 Coffee St, Bean Town, CA 95036",
      "latitude": 34.316364,
      "longitude": -118.323375,
      "description":
          "A cozy coffeehouse offering a wide range of specialty coffee drinks, teas, and freshly baked pastries. This place is perfect for catching up with friends, working remotely, or just taking a break from the hustle and bustle of daily life. The inviting atmosphere, friendly staff, and excellent coffee make it a popular spot among locals. Whether you're in the mood for a rich espresso, a creamy latte, or a refreshing iced coffee, Brewed Bliss Coffeehouse has something to satisfy your cravings.",
      "contact": {"phone": "+1-711-481-3129", "email": "contact16@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.9, "total_ratings": 367},
      "menu": [
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 21",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        }
      ]
    },
    {
      "id": 23,
      "name": "Cafe Aroma",
      "address": "199 Coffee St, Bean Town, CA 91187",
      "latitude": 34.31831,
      "longitude": -118.199553,
      "description":
          "We brew the best beans to give you a flavorful experience. Bean Brew is dedicated to sourcing the finest coffee beans from around the world and roasting them to perfection. The caf\u00e9 offers a wide range of coffee drinks, from traditional espressos to creative lattes, all made with freshly roasted beans. The interior is cozy and inviting, with plenty of seating for those who want to relax and enjoy their coffee. Whether you're a coffee connoisseur or just looking for a great cup of joe, Bean Brew has something for everyone.",
      "contact": {"phone": "+1-316-802-9519", "email": "contact16@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.2, "total_ratings": 113},
      "menu": [
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 22",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 24,
      "name": "Java Junction",
      "address": "969 Coffee St, Bean Town, CA 91180",
      "latitude": 34.375865,
      "longitude": -118.128716,
      "description":
          "Your go-to place for a variety of mocha-based drinks and delicious pastries. Caf\u00e9 Mocha offers a cozy atmosphere where you can enjoy your favorite mocha creations, from classic chocolatey mochas to more adventurous flavors like mint or caramel. The caf\u00e9 also serves a selection of freshly baked goods, including croissants, muffins, and cookies, making it the perfect spot for a morning treat or an afternoon indulgence. With its friendly staff and inviting ambiance, Caf\u00e9 Mocha is a must-visit for anyone with a sweet tooth.",
      "contact": {"phone": "+1-834-712-4561", "email": "contact14@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.9, "total_ratings": 393},
      "menu": [
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 23",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        }
      ]
    },
    {
      "id": 25,
      "name": "The Daily Grind",
      "address": "486 Coffee St, Bean Town, CA 92243",
      "latitude": 34.675011,
      "longitude": -118.745358,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-261-756-9229", "email": "contact8@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.9, "total_ratings": 107},
      "menu": [
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 24",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 26,
      "name": "Mocha Magic",
      "address": "215 Coffee St, Bean Town, CA 90005",
      "latitude": 34.045436,
      "longitude": -118.657786,
      "description":
          "A corner caf\u00e9 known for its relaxing atmosphere and quality coffee. The menu features a mix of classic coffee drinks and innovative creations that are sure to please any palate. The caf\u00e9 also offers a selection of gourmet sandwiches, salads, and desserts, making it a great spot for lunch or a light dinner. With its warm lighting, comfortable seating, and friendly service, Coffee Corner is a haven for coffee lovers looking to escape the daily grind.",
      "contact": {"phone": "+1-455-895-4796", "email": "contact31@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.4, "total_ratings": 159},
      "menu": [
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 25",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        }
      ]
    },
    {
      "id": 27,
      "name": "Brewed Bliss Coffeehouse",
      "address": "320 Coffee St, Bean Town, CA 94634",
      "latitude": 34.457831,
      "longitude": -118.166182,
      "description":
          "A cozy spot to enjoy your favorite coffee and relax. Steamy Beans Caf\u00e9 is known for its laid-back vibe and friendly service. The caf\u00e9 offers a wide range of coffee drinks, from rich espressos to creamy lattes, as well as a selection of teas and hot chocolates. The menu also includes a variety of pastries, sandwiches, and salads, all made with fresh, high-quality ingredients. Whether you're looking for a place to catch up with friends or just want to enjoy a quiet moment with a good book, Steamy Beans Caf\u00e9 is the perfect spot.",
      "contact": {"phone": "+1-920-927-2929", "email": "contact45@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.5, "total_ratings": 303},
      "menu": [
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 26",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 28,
      "name": "Grounds & Grinds",
      "address": "836 Coffee St, Bean Town, CA 94317",
      "latitude": 34.569706,
      "longitude": -118.460139,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-989-345-7259", "email": "contact42@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.8, "total_ratings": 457},
      "menu": [
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 27",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 29,
      "name": "Coffee Corner",
      "address": "814 Coffee St, Bean Town, CA 93581",
      "latitude": 34.504823,
      "longitude": -118.216014,
      "description":
          "An urban coffee spot with a modern vibe, offering fresh brews, artisan snacks, and a space that invites relaxation. The interior is sleek and minimalist, making it a perfect backdrop for your next Instagram post. The baristas are known for their attention to detail and passion for coffee, ensuring that each cup is brewed to perfection. With a variety of seating options, including cozy corners and communal tables, Urban Grind is a great place to meet up with friends or get some work done.",
      "contact": {"phone": "+1-724-155-6302", "email": "contact3@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.6, "total_ratings": 494},
      "menu": [
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 28",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 30,
      "name": "Java Junction",
      "address": "792 Coffee St, Bean Town, CA 96849",
      "latitude": 34.781864,
      "longitude": -118.579909,
      "description":
          "A corner caf\u00e9 known for its relaxing atmosphere and quality coffee. The menu features a mix of classic coffee drinks and innovative creations that are sure to please any palate. The caf\u00e9 also offers a selection of gourmet sandwiches, salads, and desserts, making it a great spot for lunch or a light dinner. With its warm lighting, comfortable seating, and friendly service, Coffee Corner is a haven for coffee lovers looking to escape the daily grind.",
      "contact": {"phone": "+1-488-785-2090", "email": "contact39@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.5, "total_ratings": 234},
      "menu": [
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 29",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 31,
      "name": "Coffee Corner",
      "address": "589 Coffee St, Bean Town, CA 98239",
      "latitude": 34.771917,
      "longitude": -118.98124,
      "description":
          "Relax and enjoy a latte in our comfortable lounge. Latte Lounge is designed for those who appreciate the finer things in life. The caf\u00e9 offers a curated selection of coffee drinks, teas, and specialty lattes, all made with high-quality ingredients. The interior is chic and sophisticated, with plush seating and stylish d\u00e9cor that make it the perfect place to unwind after a long day. Whether you're meeting a friend for coffee or looking for a quiet spot to read a book, Latte Lounge is the place to be.",
      "contact": {"phone": "+1-849-773-2278", "email": "contact14@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.7, "total_ratings": 301},
      "menu": [
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 30",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 32,
      "name": "Brews Brothers",
      "address": "299 Coffee St, Bean Town, CA 95181",
      "latitude": 34.66693,
      "longitude": -118.918751,
      "description":
          "Your go-to place for a variety of mocha-based drinks and delicious pastries. Caf\u00e9 Mocha offers a cozy atmosphere where you can enjoy your favorite mocha creations, from classic chocolatey mochas to more adventurous flavors like mint or caramel. The caf\u00e9 also serves a selection of freshly baked goods, including croissants, muffins, and cookies, making it the perfect spot for a morning treat or an afternoon indulgence. With its friendly staff and inviting ambiance, Caf\u00e9 Mocha is a must-visit for anyone with a sweet tooth.",
      "contact": {"phone": "+1-683-675-1329", "email": "contact33@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.3, "total_ratings": 262},
      "menu": [
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 31",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 33,
      "name": "Roast House",
      "address": "291 Coffee St, Bean Town, CA 93862",
      "latitude": 34.823016,
      "longitude": -118.821175,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-189-300-3163", "email": "contact33@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.9, "total_ratings": 455},
      "menu": [
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 32",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 34,
      "name": "Roast House",
      "address": "981 Coffee St, Bean Town, CA 94116",
      "latitude": 34.692914,
      "longitude": -118.839195,
      "description":
          "Your caffeine fix is just around the corner. Caffeine Fix is a trendy coffee shop that specializes in bold, flavorful coffee drinks. The menu features a variety of options, from classic black coffee to more elaborate creations like caramel macchiatos and mocha frappes. The caf\u00e9 also offers a selection of pastries, sandwiches, and salads, making it a great spot for a quick bite. With its modern d\u00e9cor and upbeat atmosphere, Caffeine Fix is a popular choice for young professionals and students.",
      "contact": {"phone": "+1-440-526-5954", "email": "contact33@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.5, "total_ratings": 153},
      "menu": [
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 33",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 35,
      "name": "Mocha Magic",
      "address": "218 Coffee St, Bean Town, CA 99671",
      "latitude": 34.650834,
      "longitude": -118.118359,
      "description":
          "We brew the best beans to give you a flavorful experience. Bean Brew is dedicated to sourcing the finest coffee beans from around the world and roasting them to perfection. The caf\u00e9 offers a wide range of coffee drinks, from traditional espressos to creative lattes, all made with freshly roasted beans. The interior is cozy and inviting, with plenty of seating for those who want to relax and enjoy their coffee. Whether you're a coffee connoisseur or just looking for a great cup of joe, Bean Brew has something for everyone.",
      "contact": {"phone": "+1-774-241-8125", "email": "contact15@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.8, "total_ratings": 321},
      "menu": [
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 34",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 36,
      "name": "The Daily Grind",
      "address": "375 Coffee St, Bean Town, CA 95290",
      "latitude": 34.489618,
      "longitude": -118.220673,
      "description":
          "A perfect stop for a quick coffee and light bites. Java Junction is a neighborhood favorite, known for its fast and friendly service. The menu includes a variety of coffee drinks, from strong espressos to sweet lattes, as well as a selection of pastries and snacks. Whether you're on your way to work or just need a quick pick-me-up, Java Junction has you covered. The caf\u00e9's convenient location and affordable prices make it a popular choice for busy professionals and students alike.",
      "contact": {"phone": "+1-418-182-3070", "email": "contact18@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.9, "total_ratings": 496},
      "menu": [
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 35",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 37,
      "name": "Caffeine Fix",
      "address": "532 Coffee St, Bean Town, CA 99922",
      "latitude": 34.266605,
      "longitude": -118.314246,
      "description":
          "Your go-to place for a variety of mocha-based drinks and delicious pastries. Caf\u00e9 Mocha offers a cozy atmosphere where you can enjoy your favorite mocha creations, from classic chocolatey mochas to more adventurous flavors like mint or caramel. The caf\u00e9 also serves a selection of freshly baked goods, including croissants, muffins, and cookies, making it the perfect spot for a morning treat or an afternoon indulgence. With its friendly staff and inviting ambiance, Caf\u00e9 Mocha is a must-visit for anyone with a sweet tooth.",
      "contact": {"phone": "+1-890-192-1943", "email": "contact17@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.0, "total_ratings": 365},
      "menu": [
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 36",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 38,
      "name": "Mocha Magic",
      "address": "658 Coffee St, Bean Town, CA 95736",
      "latitude": 34.683588,
      "longitude": -118.088819,
      "description":
          "We brew the best beans to give you a flavorful experience. Bean Brew is dedicated to sourcing the finest coffee beans from around the world and roasting them to perfection. The caf\u00e9 offers a wide range of coffee drinks, from traditional espressos to creative lattes, all made with freshly roasted beans. The interior is cozy and inviting, with plenty of seating for those who want to relax and enjoy their coffee. Whether you're a coffee connoisseur or just looking for a great cup of joe, Bean Brew has something for everyone.",
      "contact": {"phone": "+1-620-826-5348", "email": "contact38@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.7, "total_ratings": 116},
      "menu": [
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 37",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        }
      ]
    },
    {
      "id": 39,
      "name": "Java House",
      "address": "580 Coffee St, Bean Town, CA 96295",
      "latitude": 34.920364,
      "longitude": -118.180931,
      "description":
          "Your go-to place for a variety of mocha-based drinks and delicious pastries. Caf\u00e9 Mocha offers a cozy atmosphere where you can enjoy your favorite mocha creations, from classic chocolatey mochas to more adventurous flavors like mint or caramel. The caf\u00e9 also serves a selection of freshly baked goods, including croissants, muffins, and cookies, making it the perfect spot for a morning treat or an afternoon indulgence. With its friendly staff and inviting ambiance, Caf\u00e9 Mocha is a must-visit for anyone with a sweet tooth.",
      "contact": {"phone": "+1-957-778-6950", "email": "contact6@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.3, "total_ratings": 307},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 38",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        }
      ]
    },
    {
      "id": 40,
      "name": "Java House",
      "address": "535 Coffee St, Bean Town, CA 95100",
      "latitude": 34.472178,
      "longitude": -118.185729,
      "description":
          "A cozy spot to enjoy your favorite coffee and relax. Steamy Beans Caf\u00e9 is known for its laid-back vibe and friendly service. The caf\u00e9 offers a wide range of coffee drinks, from rich espressos to creamy lattes, as well as a selection of teas and hot chocolates. The menu also includes a variety of pastries, sandwiches, and salads, all made with fresh, high-quality ingredients. Whether you're looking for a place to catch up with friends or just want to enjoy a quiet moment with a good book, Steamy Beans Caf\u00e9 is the perfect spot.",
      "contact": {"phone": "+1-764-357-7129", "email": "contact29@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.7, "total_ratings": 411},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 39",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 41,
      "name": "Latte Lounge",
      "address": "372 Coffee St, Bean Town, CA 97130",
      "latitude": 34.421259,
      "longitude": -118.440747,
      "description":
          "We brew the best beans to give you a flavorful experience. Bean Brew is dedicated to sourcing the finest coffee beans from around the world and roasting them to perfection. The caf\u00e9 offers a wide range of coffee drinks, from traditional espressos to creative lattes, all made with freshly roasted beans. The interior is cozy and inviting, with plenty of seating for those who want to relax and enjoy their coffee. Whether you're a coffee connoisseur or just looking for a great cup of joe, Bean Brew has something for everyone.",
      "contact": {"phone": "+1-945-382-7402", "email": "contact27@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 5.0, "total_ratings": 423},
      "menu": [
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 40",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        }
      ]
    },
    {
      "id": 42,
      "name": "Espresso Express",
      "address": "990 Coffee St, Bean Town, CA 94786",
      "latitude": 34.355014,
      "longitude": -118.457875,
      "description":
          "Your go-to place for a variety of mocha-based drinks and delicious pastries. Caf\u00e9 Mocha offers a cozy atmosphere where you can enjoy your favorite mocha creations, from classic chocolatey mochas to more adventurous flavors like mint or caramel. The caf\u00e9 also serves a selection of freshly baked goods, including croissants, muffins, and cookies, making it the perfect spot for a morning treat or an afternoon indulgence. With its friendly staff and inviting ambiance, Caf\u00e9 Mocha is a must-visit for anyone with a sweet tooth.",
      "contact": {"phone": "+1-181-293-2645", "email": "contact44@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.0, "total_ratings": 246},
      "menu": [
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 41",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 43,
      "name": "Java Junction",
      "address": "954 Coffee St, Bean Town, CA 94414",
      "latitude": 34.761944,
      "longitude": -118.286568,
      "description":
          "A perfect stop for a quick coffee and light bites. Java Junction is a neighborhood favorite, known for its fast and friendly service. The menu includes a variety of coffee drinks, from strong espressos to sweet lattes, as well as a selection of pastries and snacks. Whether you're on your way to work or just need a quick pick-me-up, Java Junction has you covered. The caf\u00e9's convenient location and affordable prices make it a popular choice for busy professionals and students alike.",
      "contact": {"phone": "+1-465-886-4334", "email": "contact28@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.1, "total_ratings": 145},
      "menu": [
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 42",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        }
      ]
    },
    {
      "id": 44,
      "name": "Espresso Express",
      "address": "501 Coffee St, Bean Town, CA 91121",
      "latitude": 34.57958,
      "longitude": -118.489354,
      "description":
          "A cozy spot to enjoy your favorite coffee and relax. Steamy Beans Caf\u00e9 is known for its laid-back vibe and friendly service. The caf\u00e9 offers a wide range of coffee drinks, from rich espressos to creamy lattes, as well as a selection of teas and hot chocolates. The menu also includes a variety of pastries, sandwiches, and salads, all made with fresh, high-quality ingredients. Whether you're looking for a place to catch up with friends or just want to enjoy a quiet moment with a good book, Steamy Beans Caf\u00e9 is the perfect spot.",
      "contact": {"phone": "+1-469-841-1248", "email": "contact11@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.9, "total_ratings": 465},
      "menu": [
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 43",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 45,
      "name": "Mocha Magic",
      "address": "665 Coffee St, Bean Town, CA 95164",
      "latitude": 34.515821,
      "longitude": -118.392322,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-790-168-1075", "email": "contact26@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.7, "total_ratings": 102},
      "menu": [
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 44",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 46,
      "name": "Grounds & Grinds",
      "address": "290 Coffee St, Bean Town, CA 92935",
      "latitude": 34.458837,
      "longitude": -118.624708,
      "description":
          "A cozy spot to enjoy your favorite coffee and relax. Steamy Beans Caf\u00e9 is known for its laid-back vibe and friendly service. The caf\u00e9 offers a wide range of coffee drinks, from rich espressos to creamy lattes, as well as a selection of teas and hot chocolates. The menu also includes a variety of pastries, sandwiches, and salads, all made with fresh, high-quality ingredients. Whether you're looking for a place to catch up with friends or just want to enjoy a quiet moment with a good book, Steamy Beans Caf\u00e9 is the perfect spot.",
      "contact": {"phone": "+1-398-367-5224", "email": "contact42@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.7, "total_ratings": 443},
      "menu": [
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 45",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 47,
      "name": "Caf\u00e9 Mocha",
      "address": "533 Coffee St, Bean Town, CA 94458",
      "latitude": 34.976784,
      "longitude": -118.207587,
      "description":
          "Get your espresso fix here, fast and fresh. Espresso Express is all about delivering quality coffee with speed and efficiency. The caf\u00e9 is known for its strong, flavorful espresso shots that are perfect for those who need a quick caffeine boost. In addition to espresso, the menu includes a variety of other coffee drinks, as well as a selection of pastries and snacks. The caf\u00e9's no-nonsense approach to coffee makes it a favorite among busy professionals and coffee purists.",
      "contact": {"phone": "+1-514-802-4415", "email": "contact32@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.7, "total_ratings": 426},
      "menu": [
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 46",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        }
      ]
    },
    {
      "id": 48,
      "name": "Caf\u00e9 Mocha",
      "address": "302 Coffee St, Bean Town, CA 94176",
      "latitude": 34.671762,
      "longitude": -118.860031,
      "description":
          "A corner caf\u00e9 known for its relaxing atmosphere and quality coffee. The menu features a mix of classic coffee drinks and innovative creations that are sure to please any palate. The caf\u00e9 also offers a selection of gourmet sandwiches, salads, and desserts, making it a great spot for lunch or a light dinner. With its warm lighting, comfortable seating, and friendly service, Coffee Corner is a haven for coffee lovers looking to escape the daily grind.",
      "contact": {"phone": "+1-620-582-4139", "email": "contact30@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.9, "total_ratings": 331},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 47",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        }
      ]
    },
    {
      "id": 49,
      "name": "Bean Brew",
      "address": "707 Coffee St, Bean Town, CA 92186",
      "latitude": 34.715712,
      "longitude": -118.946474,
      "description":
          "A perfect stop for a quick coffee and light bites. Java Junction is a neighborhood favorite, known for its fast and friendly service. The menu includes a variety of coffee drinks, from strong espressos to sweet lattes, as well as a selection of pastries and snacks. Whether you're on your way to work or just need a quick pick-me-up, Java Junction has you covered. The caf\u00e9's convenient location and affordable prices make it a popular choice for busy professionals and students alike.",
      "contact": {"phone": "+1-322-795-7692", "email": "contact25@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 3.9, "total_ratings": 409},
      "menu": [
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 48",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 50,
      "name": "Brews Brothers",
      "address": "134 Coffee St, Bean Town, CA 90935",
      "latitude": 34.106677,
      "longitude": -118.143841,
      "description":
          "A perfect stop for a quick coffee and light bites. Java Junction is a neighborhood favorite, known for its fast and friendly service. The menu includes a variety of coffee drinks, from strong espressos to sweet lattes, as well as a selection of pastries and snacks. Whether you're on your way to work or just need a quick pick-me-up, Java Junction has you covered. The caf\u00e9's convenient location and affordable prices make it a popular choice for busy professionals and students alike.",
      "contact": {"phone": "+1-297-205-8289", "email": "contact12@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.2, "total_ratings": 176},
      "menu": [
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 49",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        },
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        }
      ]
    },
    {
      "id": 51,
      "name": "Java House",
      "address": "789 Coffee St, Bean Town, CA 93880",
      "latitude": 34.627659,
      "longitude": -118.072857,
      "description":
          "A perfect stop for a quick coffee and light bites. Java Junction is a neighborhood favorite, known for its fast and friendly service. The menu includes a variety of coffee drinks, from strong espressos to sweet lattes, as well as a selection of pastries and snacks. Whether you're on your way to work or just need a quick pick-me-up, Java Junction has you covered. The caf\u00e9's convenient location and affordable prices make it a popular choice for busy professionals and students alike.",
      "contact": {"phone": "+1-118-340-2507", "email": "contact22@example.com"},
      "images": [
        "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?cs=srgb&dl=pexels-apgpotr-683039.jpg&fm=jpg",
        "https://media.istockphoto.com/id/1428594094/photo/empty-coffee-shop-interior-with-wooden-tables-coffee-maker-pastries-and-pendant-lights.jpg?s=612x612&w=0&k=20&c=dMqeYCJDs3BeBP_jv93qHRISDt-54895SPoVc6_oJt4="
      ],
      "open_hours": {
        "monday": "7:00 AM - 9:00 PM",
        "tuesday": "7:00 AM - 9:00 PM",
        "wednesday": "7:00 AM - 9:00 PM",
        "thursday": "7:00 AM - 9:00 PM",
        "friday": "7:00 AM - 10:00 PM",
        "saturday": "8:00 AM - 10:00 PM",
        "sunday": "8:00 AM - 8:00 PM"
      },
      "ratings": {"average_rating": 4.1, "total_ratings": 491},
      "menu": [
        {
          "id": 1,
          "name": "Blueberry Muffin",
          "image":
              "https://www.onceuponachef.com/images/2020/06/Blueberry-Muffins.jpg",
          "description":
              "A soft and moist muffin bursting with fresh blueberries. This popular baked good is a favorite for breakfast or a snack, offering a tender crumb and a sweet-tart flavor from the juicy blueberries. The muffin is topped with a sprinkling of sugar, giving it a slightly crunchy top that contrasts nicely with the soft interior.",
          "price": 2.25,
          "creation_time": "8 minutes"
        },
        {
          "id": 1,
          "name": "Caramel Macchiato",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/06/Caramel-Macchiato-005.jpg",
          "description":
              "Espresso mixed with vanilla syrup and steamed milk, topped with caramel drizzle. This sweet and creamy drink is a favorite for those who enjoy a balance of strong coffee and indulgent flavors. The caramel drizzle adds a touch of sweetness, while the vanilla syrup enhances the flavor of the espresso. A perfect treat for any time of day.",
          "price": 4.75,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Green Tea Matcha",
          "image":
              "https://www.justonecookbook.com/wp-content/uploads/2019/03/Iced-Matcha-Latte-3622-I.jpg",
          "description":
              "Premium matcha green tea whisked with steamed milk. This vibrant green drink is both earthy and creamy, offering a unique flavor experience that is as energizing as it is calming. The matcha powder used in this drink is high-quality, ensuring a smooth and rich flavor that is perfect for matcha lovers.",
          "price": 4.0,
          "creation_time": "6 minutes"
        },
        {
          "id": 1,
          "name": "Cappuccino",
          "image":
              "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/cappuccino.jpg",
          "description":
              "Rich espresso blended with steamed milk, topped with a light layer of foam. This classic Italian coffee drink is perfect for those who enjoy a balanced combination of strong coffee and creamy milk. The foam on top not only adds a luxurious texture but also helps to retain the warmth of the drink, making it a comforting choice for any time of day.",
          "price": 3.5,
          "creation_time": "5 minutes"
        },
        {
          "id": 1,
          "name": "Chocolate Croissant",
          "image":
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-croissants-e22a58b.jpg",
          "description":
              "Buttery and flaky croissant filled with rich chocolate. This classic French pastry is a delightful combination of crispy, golden layers and smooth, melted chocolate. The contrast between the crunchy exterior and the soft, sweet interior makes each bite a satisfying experience. Perfect for breakfast or as an indulgent snack.",
          "price": 2.75,
          "creation_time": "10 minutes"
        },
        {
          "id": 1,
          "name": "Espresso",
          "image":
              "https://www.thespruceeats.com/thmb/45nnBGhXZBO9ciXoPjl_S5R2o0g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/espresso-recipe-765015-hero-01-8f4b2c02fd234fb19fb570a0e053d36a.jpg",
          "description":
              "A strong and rich shot of coffee, brewed to perfection. This intense coffee drink is the foundation for many other coffee beverages, but it also stands on its own as a powerful pick-me-up. The deep, complex flavors of the espresso are the result of carefully selected and roasted coffee beans, making this drink a favorite among coffee purists.",
          "price": 2.5,
          "creation_time": "3 minutes"
        },
        {
          "id": 1,
          "name": "Mocha",
          "image":
              "https://www.loveandlemons.com/wp-content/uploads/2020/09/mocha.jpg",
          "description":
              "Espresso blended with steamed milk and chocolate syrup, topped with whipped cream. The perfect treat for coffee and chocolate lovers alike, this drink combines the bold flavor of espresso with the sweetness of chocolate. The whipped cream on top adds a rich, creamy texture that makes this drink feel like a decadent indulgence.",
          "price": 4.5,
          "creation_time": "7 minutes"
        },
        {
          "id": 1,
          "name": "Iced Latte",
          "image":
              "https://www.acouplecooks.com/wp-content/uploads/2021/05/Iced-Latte-002.jpg",
          "description":
              "Smooth espresso combined with chilled milk, poured over ice. This refreshing drink is perfect for warm days when you need a caffeine boost but prefer something cool. The combination of strong espresso and cold milk creates a smooth, satisfying drink that is both energizing and refreshing.",
          "price": 4.25,
          "creation_time": "6 minutes"
        }
      ],
      "seller_info": {
        "owner_name": "Owner 50",
        "owner_image":
            "https://www.thebalancecareers.com/thmb/1YVg2AcmBr2b5XtUwGzFOPMDysA=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/businesswoman-standing-in-a-cafe-637190334-5a5371f6a9d4f90036bd49ea.jpg"
      },
      "reviews": [
        {
          "id": 1,
          "name": "John Smith",
          "image":
              "https://www.boredpanda.com/blog/wp-content/uploads/2020/10/2-5f7b05cf237b0__700.jpg",
          "rating": 5,
          "review_text":
              "Amazing coffee and cozy atmosphere! Will definitely come back. The staff were incredibly friendly, and the overall vibe of the place was exactly what I was looking for in a coffee shop."
        },
        {
          "id": 1,
          "name": "Michael Johnson",
          "image":
              "https://static.independent.co.uk/2021/05/13/11/Transgender.jpg",
          "rating": 4.5,
          "review_text":
              "Loved the Mocha! Perfect blend of coffee and chocolate. The presentation was also impressive, and the caf\u00e9 had a warm and welcoming atmosphere."
        },
        {
          "id": 1,
          "name": "Emily Davis",
          "image": "https://i.insider.com/57d1e68ddd089592248b494b?width=700",
          "rating": 4,
          "review_text":
              "The cappuccino was excellent, but the croissant was a bit too sweet for my taste. However, the service was top-notch, and I loved the ambiance of the caf\u00e9."
        },
        {
          "id": 1,
          "name": "Sarah Lee",
          "image":
              "https://image.shutterstock.com/image-photo/portrait-beautiful-young-woman-standing-260nw-1523841288.jpg",
          "rating": 5,
          "review_text":
              "Best espresso in town! The staff is always so friendly, and the caf\u00e9 itself is a great place to relax or get some work done."
        }
      ]
    }
  ];
}
