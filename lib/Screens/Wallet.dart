import 'package:flutter/material.dart';
import 'package:enrio/main.dart';
class WalletPage extends StatefulWidget {
  static final String routeName = '/WalletPageRoute';
  WalletPage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Shop by Category'),
         ),

       );
  }
}