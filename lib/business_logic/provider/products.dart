import 'package:flutter/material.dart';
import 'package:mega/business_logic/provider/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 1,
      images: [
        "assets/images/30.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™ gaming",
      price: 64.99,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      id: 2,
      images: [
        "assets/images/20.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™ gaming",
      price: 64.99,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.8,
      isFavourite: false,
      isPopular: true,
    ),
    Product(
      id: 3,
      images: [
        "assets/images/40.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™ gaming",
      price: 64.99,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      id: 4,
      images: [
        "assets/images/ps4_console_blue_1.png",
        "assets/images/ps4_console_blue_2.png",
        "assets/images/ps4_console_blue_3.png",
        "assets/images/ps4_console_blue_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™ gaming",
      price: 64.99,
      description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.8,
      isFavourite: false,
      isPopular: true,
    ),
    Product(
      id: 5,
      images: [
        "assets/images/40.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™ gaming",
      price: 64.99,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      id: 6,
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™",
      price: 64.99,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.8,
      isFavourite: false,
      isPopular: true,
    ),
    Product(
      id: 7,
      images: [
        "assets/images/Image Popular Product 2.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Nike Sport White - Man Pant gaming",
      price: 50.5,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: false,
      isPopular: true,
    ),
    Product(
      id: 8,
      images: [
        "assets/images/shoes2.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Logitech Head product product",
      price: 20.20,
      description:
      "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: true,
    ),
    Product(
      id: 9,
      images: [
        "assets/images/Image Popular Product 3.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Logitech Head product product gaming",
      price: 20.20,
      description:
      "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: true,
    ),
    Product(
      id: 10,
      images: [
        "assets/images/glap.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Gloves XC Omega - Polygon",
      price: 36.55,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: false,
      isPopular: true,
    ),
    Product(
      id: 11,
      images: [
        "assets/images/wireless headset.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Logitech Head product product",
      price: 20.20,
      description:
          "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: true,
    ),
    Product(
      id: 12,
      images: [
        "assets/images/tshirt.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Logitech Head product product",
      price: 20.20,
      description:
      "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: true,
    ),
    Product(
      id: 13,
      images: [
        "assets/images/product 1 image.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Logitech Head gaming gaming",
      price: 20.20,
      description:
      "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: true,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((element) => element.isFavourite).toList();
  }
}
