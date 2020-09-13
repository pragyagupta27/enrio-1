import 'package:flutter/material.dart';
import 'package:enrio/main.dart';
class SettingsPage extends StatefulWidget {
  static final String routeName = '/SettingsPageRoute';
  SettingsPage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Settings'),
         ),

       );
  }
}