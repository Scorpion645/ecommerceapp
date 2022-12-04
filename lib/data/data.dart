import 'dart:ffi';

class Plant {
  final String imageUrl;
  final double price;

  Plant({required this.imageUrl, required this.price});
}

List plants = [
  Plant(imageUrl: 'assets/1.webp', price: 12.99),
  Plant(imageUrl: 'assets/2.webp', price: 13.99),
  Plant(imageUrl: 'assets/3.webp', price: 14.99),
  Plant(imageUrl: 'assets/4.webp', price: 15.99),
  Plant(imageUrl: 'assets/5.webp', price: 16.99),
  Plant(imageUrl: 'assets/6.webp', price: 17.99),
  Plant(imageUrl: 'assets/7.webp', price: 18.99),
  Plant(imageUrl: 'assets/8.webp', price: 19.99),
];
