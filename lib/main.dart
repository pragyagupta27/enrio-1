import 'package:enrio/Screens/rentout.dart';
import 'package:enrio/sign_in.dart';
import 'package:flutter/material.dart';
// To direct to login page
import 'login_page.dart';
import 'Screens/Categories.dart';
import 'package:flutter/services.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'intro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setPreferredOrientations([
    //     DeviceOrientation.portraitUp,
    //     DeviceOrientation.portraitDown,
    //   ]);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFF9D976),
      ),
      color: Color(0xFFF9D976),
      title: 'Flutter Login',
      home: SplashScreen.navigate(
        name: 'assets/images/splash.flr',
        next: (context) => IntroScreen(),
        startAnimation: '1',
        backgroundColor: Color(0xFFF9D976),
        until: () => Future.delayed(Duration(seconds: 5)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
