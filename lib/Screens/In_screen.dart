import 'package:flutter/material.dart';
import 'package:enrio/Screens/details_page.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: MyApp(),
    );
  }
}

class Inscreenpage extends StatefulWidget {
  static final String routeName = '/InscreenPageRoute';
 Inscreenpage({Key key, this.title}) : super(key: key);

 
  final String title;
  @override
  _InscreenpageState createState() => _InscreenpageState();
}

class _InscreenpageState extends State<Inscreenpage> {
  var q;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 9),
                  child: SafeArea(
                    child:Container(
                      height: 80.0,
                      width: 325.0,
                      child: SearchBar(icon: Padding(padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.search),
                      ),
                        searchBarStyle: SearchBarStyle(
                            backgroundColor: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            ), onItemFound: (item, int index) {}, onSearch: (String text) {}
                                 ,
                      )),
                )
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: <Widget>[
                Text(
                  'Products',
                  style: TextStyle(
                    color: Colors.white,
                   // fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 25.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              boxShadow:[ BoxShadow(
                color: Colors.lightBlueAccent,
                blurRadius: 15,
              )
              ],
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 20.0, right: 20),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(children: [
                      _buildProductItem('assets/images/charger.png',
                          'Samsung charger', 26.0, q),
                          Divider(),
                      _buildProductItem(
                          'assets/images/medicine.png', 'Medicine', 20, q),
                    ]),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


  Widget _buildProductItem(
      String imgpath, String productname, double price, int quantity) {
    String pricing = price.toString();
    return //Padding(
     // padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      ListTile(
       
              leading:
                  Hero(
                    tag: imgpath,
                    child: Image(
                      image: AssetImage(imgpath),
                      fit: BoxFit.cover,
                      height: 75,
                      width: 75,
                    ),
                  ),
                  title:
                      Text(
                        productname + '\n',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      subtitle: Text('₹'+ pricing,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF21BFBD),
                        fontWeight: FontWeight.bold,
                      ),),
                      isThreeLine: true,
                      onTap: () {
          
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Detailspage(
                heroTag: imgpath,
                productname: productname,
                price: price,
              ),
            ),
          );
        },
       trailing: Padding(
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
                        ),
                        
                        

                      //Spacer(),
                  );
              
                
//              ),
            
  //        ],
    //    ),
 //     ),
    
  }
}
