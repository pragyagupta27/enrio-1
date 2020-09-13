import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'login_page.dart';
//import 'package:procashback/loginpage.dart';
//import 'util.dart';
//import 'home_page.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Renting made simple",
        styleTitle: TextStyle(
          color: Color(0xFFF9D976),
          fontSize: 22,
          fontWeight: FontWeight.w500,
          // fontFamily: 'RobotoMono'
        ),
        description: "Get Instant Cashback from top shops in your city",
        styleDescription: TextStyle(
            color: Color(0xFFF9D976),
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            //fontStyle: FontStyle.italic,
            fontFamily: 'opensans'),
        pathImage: "assets/images/Cashback.jpg",
      ),
    );
    slides.add(
      new Slide(
        title: "Cashbacks made simple",
        styleTitle: TextStyle(
          color: Color(0xFFF9D976),
          fontSize: 22,
          fontWeight: FontWeight.w500,
          // fontFamily: 'RobotoMono'
        ),
        description: "Get Instant Cashback from top shops in your city",
        styleDescription: TextStyle(
            color: Color(0xFFF9D976),
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            //fontStyle: FontStyle.italic,
            fontFamily: 'opensans'),
        pathImage: "assets/images/Cashback.jpg",
      ),
    );
    slides.add(
      new Slide(
        title: "Cashbacks made simple",
        styleTitle: TextStyle(
          color: Color(0xFFF9D976),
          fontSize: 22,
          fontWeight: FontWeight.w500,
          // fontFamily: 'RobotoMono'
        ),
        description: "Get Instant Cashback from top shops in your city",
        styleDescription: TextStyle(
            color: Color(0xFFF9D976),
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            //fontStyle: FontStyle.italic,
            fontFamily: 'opensans'),
        pathImage: "assets/images/Cashback.jpg",
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.2,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: Hero(
                      tag: 'Cashback Image',
                      child: Image.asset(
                        currentSlide.pathImage,
                      )),
                ),
                Expanded(
                  flex: 3,
                  child: Column(children: <Widget>[
                    Text(
                      currentSlide.title,
                      style: currentSlide.styleTitle,
                    ),
                    SizedBox(height: 15),
                    Text(
                      currentSlide.description,
                      style: currentSlide.styleDescription,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33ffcc5c),
      highlightColorSkipBtn: Color(0xffffcc5c),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33ffcc5c),
      highlightColorDoneBtn: Color(0xffffcc5c),

      // Dot indicator
      colorDot: Color(0xffffcc5c),
      sizeDot: 13.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
