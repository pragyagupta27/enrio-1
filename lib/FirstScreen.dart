import 'package:flutter/material.dart';
import 'Screens/rentout.dart';
import 'login_page.dart';
import 'sign_in.dart';
import 'Screens/Categories.dart';
import 'Screens/FAQs.dart';
import 'Screens/Shopping_cart.dart';
//import 'package:flutter/material.dart';
import 'Screens/Profile_page.dart';
import 'package:carousel_pro/carousel_pro.dart';
//import 'Screens/Profile_page.dart';
import 'Screens/In_screen.dart';
import 'Screens/support_screen.dart';
//import './Screens/profile_screen.dart';
import 'profile.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Enrio'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: SizedBox(
                height: 150.0,
                width: 1000.0,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: false,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 6.0,
                  dotIncreasedColor: Color(0xFFFF335C),
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.topRight,
                  dotVerticalPadding: 10.0,
                  showIndicator: true,
                  indicatorBgPadding: 7.0,
                  images: [
                    NetworkImage(
                        'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                    NetworkImage(
                        'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                    // ExactAssetImage("assets/images/LaunchImage.jpg"),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(50),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Rentoutpage()));
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              // color: Colors.deepOrange,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepOrange,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Transform.scale(
                                  scale: 1.75,
                                  child: Column(
                                    children: <Widget>[
                                      Text('Rent Out',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Icon(
                                        Icons.arrow_upward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Inscreenpage()));
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            // color: Colors.deepOrange,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.deepOrange,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Transform.scale(
                                scale: 1.75,
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                    ),
                                    Text('Rent In',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          //padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 140,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                      )
                    ]),
                curve: Curves.easeInOutBack,
                child: SizedBox(
                    height: 140,
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                      ),
                      accountName: Text(name),
                      accountEmail: Text(email),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.grey,
                        child: Icon(Icons.person_outline),
                      ),
                    )),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.deepOrangeAccent,
              ),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profilepage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.directions_run,
                color: Colors.deepOrangeAccent,
              ),
              title: Text('Volunteer'),
            ),
            ExpansionTile(
              leading: Icon(
                Icons.event_available,
                color: Colors.deepOrangeAccent,
              ),
              title: Text('My Orders'),
              trailing: Icon(Icons.keyboard_arrow_down),
              backgroundColor: Colors.deepOrangeAccent,
              children: <Widget>[
                ListTile(
                  title: Text('Rent In Orders'),
                ),
                ListTile(
                  title: Text('Rent Out Orders'),
                )
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                color: Colors.deepOrangeAccent,
              ),
              title: Text('Wallet'),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.deepOrangeAccent,
              ),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.deepOrangeAccent,
              ),
              title: Text('Support'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Payment_page()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.deepOrangeAccent,
              ),
              title: Text('Notifications Logged'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQsPage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.deepOrangeAccent,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQsPage()));
              },
              title: Text('FAQS'),
            ),
            RaisedButton(
              onPressed: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }), ModalRoute.withName('/'));
              },
              color: Colors.deepPurple,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
            )
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

//String name;
//String email;
//String imageUrl;
