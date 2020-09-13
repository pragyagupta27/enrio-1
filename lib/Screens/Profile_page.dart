// import 'package:flutter/material.dart';
// import 'package:enrio/main.dart';
// class ProfilePage extends StatefulWidget {
//   static final String routeName = '/ProfilePageRoute';
//   ProfilePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//        return Scaffold(
//         // appBar: AppBar(
//           // backgroundColor: Colors.deepOrangeAccent,
//            //title: Text('Update Profile'),
//          //),
//          body: ListView(
//            children: <Widget>[
//              Stack(
//                 children : <Widget> [
//                 Container(height: 200,
//                 width: 500,
//                 color: Colors.deepOrangeAccent,
//                  child: Transform.scale(
//                    scale: 0.5,
//                     child: CircleAvatar(
//                      backgroundColor: Colors.grey,
//                      radius: 10,
//                      child:
//                      Transform.scale(
//                      scale: 5.0,
//                      child:Icon(Icons.account_circle,
//                      color: Colors.deepOrangeAccent,)
//                      ),
//                    ),
//                  ),
//                  ),
//                  Positioned(
//                    top: 170,
//                    left: 110,
//                  child:Transform.scale(
//                    scale: 1.2,
//                                     child: Container(
//                     height: 70,
//                     width: 210,
//                     decoration: BoxDecoration(color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow:[ BoxShadow(
//                       color: Colors.black,

//                       blurRadius: 0.0

//                     ),]

//                     ),

//                      child: Center(child: Text('abc@srmap.edu.in')),

//                      ),
//                                     )

//                  ),

//             // ),

//           ],

//                  overflow : Overflow.visible,
//              ),
//              Column(
//                children: <Widget>[
//                   Padding(
//                    padding: EdgeInsets.only(top: 50),
//                                       child: TextFormField(

//               decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'What do people call you?',
//               labelText: 'Name *',
//                 ),
//               onSaved: (String value) {
//               },
//               validator: (String value) {
//               //return value.contains('@') ? 'Do not use the @ char.' : null;
//               },

//           ),
//                   ),
//             TextFormField(

//               decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'What do people call you?',
//               labelText: 'Name *',
//                 ),
//               onSaved: (String value) {
//               },
//               validator: (String value) {
//               //return value.contains('@') ? 'Do not use the @ char.' : null;
//               },

//           ),
//           TextFormField(

//               decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'What do people call you?',
//               labelText: 'Name *',
//                 ),
//               onSaved: (String value) {
//               },
//               validator: (String value) {
//               //return value.contains('@') ? 'Do not use the @ char.' : null;
//               },

//           ),
//           TextFormField(

//               decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'What do people call you?',
//               labelText: 'Name *',
//                 ),
//               onSaved: (String value) {
//               },
//               validator: (String value) {
//               //return value.contains('@') ? 'Do not use the @ char.' : null;
//               },

//           ),
//           TextFormField(

//               decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'What do people call you?',
//               labelText: 'Name *',
//                 ),
//               onSaved: (String value) {
//               },
//               validator: (String value) {
//               //return value.contains('@') ? 'Do not use the @ char.' : null;
//               },

//           ),
//           TextFormField(

//               decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'What do people call you?',
//               labelText: 'Name *',
//                 ),
//               onSaved: (String value) {
//               },
//               validator: (String value) {
//               //return value.contains('@') ? 'Do not use the @ char.' : null;
//               },

//           ),
//           TextFormField(

//               decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'What do people call you?',
//               labelText: 'Name *',
//                 ),
//               onSaved: (String value) {
//               },
//               validator: (String value) {
//               //return value.contains('@') ? 'Do not use the @ char.' : null;
//               },

//           ),
//           TextFormField(

//               decoration: const InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'What do people call you?',
//               labelText: 'Name *',
//                 ),
//               onSaved: (String value) {
//               },
//               validator: (String value) {
//               //return value.contains('@') ? 'Do not use the @ char.' : null;
//               },

//           ),
//                ],
//              )

//            ],
//          ),

//        );
//   }
// }
