import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  static const routeName = '/payments';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF21BFBD),
        elevation: 2.0,
        title: Text(
          'Payment',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total', style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Chip(
                    label: Text(
                      'amount',
                      //'\$${cart.totalamount.toString()}',
                      style: TextStyle(
                          color:
                              Theme.of(context).primaryTextTheme.title.color),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('GPAY'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('PAYTM'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('PHONEPE'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('GPAY'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('GPAY'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('GPAY'),
            onTap: (){},
          ),
          Divider(),

          
        ],
      ),
    );
  }
}
