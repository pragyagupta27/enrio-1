import 'package:flutter/material.dart';
import 'package:enrio/main.dart';
import 'package:flutter_upi/flutter_upi.dart';

class Payment_page extends StatefulWidget {
  static final String routeName = '/Payment_pageRoute';
  Payment_page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Payment_pageState createState() => _Payment_pageState();
}

class _Payment_pageState extends State<Payment_page> {
  //class _MyAppState extends State<MyApp> {
  Future _initiateTransaction;
  GlobalKey<ScaffoldState> _key;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
    //_initiateTransaction = initTransaction();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<String> initTransaction(String app) async {
    String response = await FlutterUpi.initiateTransaction(
        app: app,
        pa: "k.navinkumar57@okhdfcbank",
        pn: "Navin",
        tr: "TR1234",
        tn: "This is a test transaction",
        am: "1.00",
        cu: "INR",
        url: "https://www.google.com");
    print(response);

    return response;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _key,
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
            Divider(),
            ListTile(
                leading: IconButton(
                    icon: Icon(
                      Icons.payment,
                      color: Color(0xFF21BFBD),
                    ),
                    color: Colors.orangeAccent,
                    splashColor: Colors.orangeAccent, onPressed: () {},),
                title: Text('Google Pay'),
                onTap: () {
                  _initiateTransaction =
                      initTransaction(FlutterUpiApps.GooglePay);
                  setState(() {});
                },
                trailing: Image(image: AssetImage('assets/images/GooglePay.png'),),
                ),
            Divider(),
            ListTile(
                leading: IconButton(
                  icon: Icon(Icons.payment, color: Color(0xFF21BFBD)),
                  color: Colors.orangeAccent,
                  splashColor: Colors.orangeAccent,
                ),
                title: Text('Paytm'),
                onTap: () {
                  _initiateTransaction = initTransaction(FlutterUpiApps.PayTM);
                  setState(() {});
                },
                trailing: ClipRRect(borderRadius: BorderRadius.circular(15),
                                  child: Image(image: AssetImage('assets/images/Paytm.png'),
                  
                  ),
                ),),
            Divider(),
            ListTile(
                leading: IconButton(
                    icon: Icon(Icons.payment, color: Color(0xFF21BFBD)),
                    color: Colors.orangeAccent,
                    splashColor: Colors.orangeAccent),
                title: Text('PhonePe'),
                onTap: () {
                  _initiateTransaction =
                      initTransaction(FlutterUpiApps.PhonePe);
                  setState(() {});
                },
                trailing: Image(image: AssetImage('assets/images/PhonePe.png'),),),
            Divider(),
            ListTile(
                leading: IconButton(
                    icon: Icon(Icons.payment, color: Color(0xFF21BFBD)),
                    color: Colors.orangeAccent,
                    splashColor: Colors.orangeAccent),
                title: Text('Amazon Pay'),
                onTap: () {
                  _initiateTransaction =
                      initTransaction(FlutterUpiApps.AmazonPay);
                  setState(() {});
                },
                trailing: Image(image: AssetImage('assets/images/AmazonPay2.png'),
                width: 100,),),
            Divider(),
            ListTile(
                leading: IconButton(
                    icon: Icon(Icons.payment, color: Color(0xFF21BFBD)),
                    color: Colors.orangeAccent,
                    splashColor: Colors.orangeAccent),
                title: Text(''),
                onTap: () {
                  _initiateTransaction =
                      initTransaction(FlutterUpiApps.GooglePay);
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
