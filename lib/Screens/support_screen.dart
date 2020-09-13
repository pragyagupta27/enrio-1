import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  static const routeName = '/support';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black45,
        ),
        backgroundColor: Color(0xFF21BFBD),
        elevation: 2.0,
        title: Text(
          'Support',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(9.0),
            title: Row(children: <Widget>[
              Text(
                'Contact number:',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                '9999999999',
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ]),
            subtitle: Row(children: [
              Icon(
                Icons.phone,
                size: 35,
                color: Colors.black45,
              ),
            ]),
          ),
          Divider(
            color: Colors.black45,
            height: 5.0,
          ),
          ListTile(
            contentPadding: EdgeInsets.all(9.0),
            title: Row(
              children: <Widget>[
                Text(
                  'Email Id:',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'xxxx@gmail.com',
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.mail,
                  size: 35,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black45,
            height: 5.0,
          ),
          ListTile(
            contentPadding: EdgeInsets.all(9.0),
            title: Row(
              children: <Widget>[
                Text(
                  'Update:',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  ' Comming Soon',
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.update,
                  size: 35,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
