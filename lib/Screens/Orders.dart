import 'package:flutter/material.dart';
import 'package:enrio/main.dart';
class CartPage extends StatefulWidget {
  static final String routeName = '/CartPageRoute';
  CartPage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Shop by Category'),
         ),

       );
  }
}