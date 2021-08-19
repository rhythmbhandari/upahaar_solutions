import 'package:upahaar_solutions/models/category.dart';
import 'package:upahaar_solutions/models/item.dart';
import 'package:upahaar_solutions/models/promotion.dart';

class Fake {
  static int numberOfItemsInCart = 1;

  static List<Category> categories = [
    Category('assets/icons/desk.svg', 'Computer'),
    Category('assets/icons/book.svg', 'Books'),
    Category('assets/icons/phone.svg', 'Iphone'),
    Category('assets/icons/health.svg', 'Health'),
    Category('assets/icons/monitor.svg', 'Monitor'),
    Category('assets/icons/laptop.svg', 'Laptop'),
    
  ];

  static List<Promotion> promotions = [
    Promotion(
      backgroundImagePath: 'assets/images/splash1.png',
      reverseGradient: false,
      title: 'All Item Product\nDiscount Up to',
      subtitle: '50%',
      tag: '30 April 2019',
      //imagePath: 'assets/images/hehe.png',
    ),
    Promotion(
      backgroundImagePath: 'assets/images/splash2.png',
      reverseGradient: true,
      title: 'Get voucher gift',
      subtitle: '\$50.00',
      caption: '*for new member\'s\nof Upahaar Solutions',
    )
  ];

  static List<String> trending = [
    'assets/images/hehe.png',
    'assets/images/hehe.png',
  ];

  static List<String> featured = [
    'assets/images/hehe.png',
    'assets/images/hehe.png',
    'assets/images/hehe.png',
    'assets/images/hehe.png'
  ];

  static List<Item> electronics = [
    Item(
      name: 'Office Computer - Black',
      imagePath: 'assets/images/dacey.png',
      originalPrice: 480,
      rating: 4.5,
      discountPercent: 30,
    ),
    Item(
      name: 'iMac Air',
      imagePath: 'assets/images/elley.png',
      originalPrice: 1240,
      rating: 4.4,
      discountPercent: 30,
    ),
    Item(
      name: 'iMac',
      imagePath: 'assets/images/table 2.png',
      originalPrice: 1060,
      rating: 4.3,
      discountPercent: 25,
    ),
    Item(
      name: 'iMac',
      imagePath: 'assets/images/chair3.png',
      originalPrice: 1240,
      rating: 4.3,
      discountPercent: 20,
    ),
    Item(
      name: 'iMac',
      imagePath: 'assets/images/chair3.png',
      originalPrice: 1680,
      rating: 4.3,
      discountPercent: 20,
    ),
    Item(
      name: 'iMac',
      imagePath: 'assets/images/chair3.png',
      originalPrice: 2080,
      rating: 4.0,
      discountPercent: 20,
    ),
  ];
}
