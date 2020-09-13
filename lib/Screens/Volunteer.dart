import 'package:flutter/material.dart';
import 'package:enrio/main.dart';
class VolunteerPage extends StatefulWidget {
  static final String routeName = '/VolunteerPageRoute';
  VolunteerPage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _VolunteerPageState createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Shop by Category'),
         ),

       );
  }
}