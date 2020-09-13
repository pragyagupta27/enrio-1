import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final double time;
  final String precautions;
  //final String imageUrl;
  // bool isFavorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.time,
    @required this.precautions,
    // @required this.imageUrl,
    //  this.isFavorite = false,
  });

  // void toggleFavoriteStatus() {
  //   isFavorite = !isFavorite;
  //   notifyListeners();
  // }
}

class Profile with ChangeNotifier {
  final String name;
  final String id;
  final String tower;
  final String mobile;
  Profile({
    @required this.id,
    @required this.name,
    @required this.tower,
    @required this.mobile,
    // @required this.imageUrl,
    //  this.isFavorite = false,
  });
}
