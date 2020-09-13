import 'package:flutter/material.dart';
import 'package:enrio/Screens/In_screen.dart';
import 'package:enrio/Screens/payment_screen.dart';
import 'package:enrio/Screens/Shopping_cart.dart';




class Detailspage extends StatefulWidget {
  static const routeName = '/details';
  final heroTag;
  final productname;
  final price;
  Detailspage({this.heroTag, this.price, this.productname});
  
  @override
  _DetailspageState createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  var selectedcard = 'Weight';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      appBar: AppBar(
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
          'Details',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2.0,
        child: SafeArea(
          child: Container(
            child: InkWell(
              onTap: () {
              Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Payment_page()
              )
              );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Order Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF21BFBD),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 82.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
            Positioned(
              height: 75,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0),
                  ),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height - 100.0,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              top: 30.0,
              left: (MediaQuery.of(context).size.width / 2) - 100.0,
              child: Hero(
                tag: widget.heroTag,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.heroTag), fit: BoxFit.cover),
                  ),
                  height: 200.0,
                  width: 200.0,
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              top: 250,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          widget.productname,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Transform.scale(
                            scale: 1.5,
                            child: Chip(
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF21BFBD),
                              label: Text(
                                '1 hr',
                                style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Price: \₹${widget.price}',
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF21BFBD),fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 25.0,
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        Container(
                          height: 68,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.0),
                            color: Color(0xFF21BFBD),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.0,fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF7A9BEE),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Wrap(
                      children: <Widget>[
                        Chip(
                            label: Text('Amp:10'),
                            backgroundColor: Color(0xFF21BFBD)),
                        Chip(
                          label: Text('USB Type:C'),
                          backgroundColor: Color(0xFF21BFBD),
                        ),
                        Chip(
                          label: Text('Brand:Samsung'),
                          backgroundColor: Color(0xFF21BFBD),
                        ),
                        Chip(
                          label: Text('Type: Normal'),
                          backgroundColor: Color(0xFF21BFBD),
                        ),
                        Chip(
                          label: Text('am'),
                          backgroundColor: Color(0xFF21BFBD),
                        ),
                        Chip(
                          label: Text('am'),
                          backgroundColor: Color(0xFF21BFBD),
                        ),
                        Chip(
                          label: Text('am'),
                          backgroundColor: Color(0xFF21BFBD),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ]),
    );
  }
}
