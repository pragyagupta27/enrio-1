import 'package:flutter/material.dart';
class FAQsPage extends StatefulWidget {
  static final String routeName = '/FAQsPageRoute';
  FAQsPage({Key key, this.title}) : super(key: key);
  

 
  final String title;

  @override
  _FAQsPageState createState() => _FAQsPageState();
}

class _FAQsPageState extends State<FAQsPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.deepOrangeAccent,
           title: Text('FAQs'),
           
         ),
          body: ListView(
            children: <Widget>[
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Colors.deepOrange,),
                  color: Colors.orangeAccent,
                  splashColor: Colors.orangeAccent, onPressed: () {},
                ),
                title: Text('What If I return the Item ?'),
              ),
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Colors.deepOrange),
                  color: Colors.orangeAccent,
                  splashColor: Colors.orangeAccent, onPressed: () {},
                ),
                title: Text('What If I return the Item ?'),
              ),
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Colors.deepOrange),
                  color: Colors.orangeAccent,
                  splashColor: Colors.orangeAccent, onPressed: () {},
                ),
                title: Text('What If I return the Item ?'),
              ),
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Colors.deepOrange),
                  color: Colors.orangeAccent,
                  splashColor: Colors.orangeAccent, onPressed: () {},
                ),
                title: Text('What If I return the Item ?'),
              ),
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Colors.deepOrange),
                  color: Colors.orangeAccent,
                  splashColor: Colors.orangeAccent, onPressed: () {},
                ),
                title: Text('What If I return the Item ?'),
              ),
            ],
            

          ) ,
       );
  }
}