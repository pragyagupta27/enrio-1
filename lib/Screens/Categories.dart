import 'package:enrio/login_page.dart';
import 'package:flutter/material.dart';
import 'package:enrio/main.dart';
//import 'package:flushbar/flushbar.dart';

class CategoryPage extends StatefulWidget {
  static final String routeName = '/CategoryPageRoute';
  CategoryPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool first_value = false;
  bool second_value = false;
  // bool first_value = false;
  bool third_value = false;
  bool fourth_value = false;
  bool fifth_value = false;
  bool sixth_value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Terms and Conditions'),
        ),
        body: Column(
          children: <Widget>[
            Checkbox(
              value: first_value,
              onChanged: (bool value) {
                setState(
                  () {
                    first_value = value;
                    print(first_value);
                    if (first_value == true) {
                      print('jh');
                    } else {
                      print('hi');
                    }
                  },
                );
              },
            ),
            Checkbox(
                value: second_value,
                onChanged: (bool value) {
                  setState(
                    () {
                      second_value = value;
                      // Builder(
                      //   builder: (BuildContext context) {
                      //     return (
                      //       // title: 'hi',
                      //       // duration: Duration(seconds: 3),
                      //     );
                      //   },
                      // );
                    },
                  );
                }),
            Checkbox(
              value: third_value,
              onChanged: (bool value) {
                setState(
                  () {
                    third_value = value;
                  },
                );
              },
            ),
            Checkbox(
              value: fourth_value,
              onChanged: (bool value) {
                setState(
                  () {
                    fourth_value = value;
                  },
                );
              },
            ),
            Checkbox(
              value: fifth_value,
              onChanged: (bool value) {
                setState(
                  () {
                    fifth_value = value;
                  },
                );
              },
            ),
            Checkbox(
              value: sixth_value,
              onChanged: (bool value) {
                setState(
                  () {
                    sixth_value = value;
                  },
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: Builder(builder: (BuildContext context) {
          return BottomAppBar(
            elevation: 2.0,
            child: SafeArea(
              child: Container(
                child: InkWell(
                  onTap: () {
                    if (first_value &&
                        second_value &&
                        third_value &&
                        fourth_value &&
                        sixth_value) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    } else {
                      print('hello');
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.blue,
                          content: new Text(
                              'Please raed and select Terms and conditions'),
                        ),
                      );
                    }
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Proceed',
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
          );
        }));
  }
}
