import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

import '../account_page/account.dart';
import 'package:wavedirect/global_widgets/animation/FadeAnimation.dart';

// import 'package:highlighter_coachmark/highlighter_coachmark.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() => runApp(MaterialApp(
//       home: MyApp(),
//       debugShowCheckedModeBanner: false,
//     ));

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  /*GlobalKey _fabKey = GlobalObjectKey("fab");

  void initState() {
    super.initState();
    // showCoachMarkFAB();
  }

  void showCoachMarkFAB() {
    CoachMark coachMarkFAB = CoachMark();
    RenderBox target = _fabKey.currentContext.findRenderObject();

    Rect markRect = target.localToGlobal(Offset.zero) & target.size;
    markRect = Rect.fromCircle(
        center: markRect.center, radius: markRect.longestSide * 0.6);

    coachMarkFAB.show(
      targetContext: _fabKey.currentContext,
      markRect: markRect,
      children: [
        Center(
            child: Text("Tap on button\nto add a friend",
                style: const TextStyle(
                  fontSize: 24.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                )))
      ],
      duration: null,
      onClose: () {},
    );
  }*/

  @override
  Widget build(BuildContext context) {
    final primaryColor = Colors.white;
    final secondaryColor = Color(0xFFb01116);
    final nullColor = Color(0xFFAAAFB4);
    final font = 'Traffolight';

    return Scaffold(
      backgroundColor: Color(0xFF5e1919),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1.0,
                    Container(
                      padding: EdgeInsets.only(top: 64.0),
                      child: Text(
                        'Welcome!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 48.0,
                          fontFamily: font,
                        ),
                      ),
                    ),
                  ),
                  FadeAnimation(
                    1.1,
                    Divider(
                      thickness: 2.0,
                      color: Colors.white70,
                    ),
                  ),
                  FadeAnimation(
                    1.2,
                    Container(
                      padding: EdgeInsets.only(top: 8.0),
                      width: double.infinity,
                      child: Text(
                        'Thank you for joining us!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontFamily: font,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              FadeAnimation(
                1.2,
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 48.0, bottom: 2.5),
                      child: Row(
                        children: [
                          Text(
                            'Start by tapping here!',
                            style: TextStyle(
                              fontFamily: font,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(left: 8.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          key: fabKey,
          // Cannot be `Alignment.center`
          alignment: Alignment.bottomRight,
          ringColor: Color(0xFFDCDCDC),
          ringDiameter: 500.0,
          ringWidth: 150.0,
          fabSize: 64.0,
          fabElevation: 8.0,

          // Also can use specific color based on wether
          // the menu is open or not:
          // fabOpenColor: Colors.white
          // fabCloseColor: Colors.white
          // These properties take precedence over fabColor
          fabColor: secondaryColor,
          fabOpenIcon: Icon(Icons.menu, color: primaryColor),
          fabCloseIcon: Icon(Icons.close, color: primaryColor),
          fabMargin: const EdgeInsets.all(16.0),
          animationDuration: const Duration(milliseconds: 800),
          animationCurve: Curves.easeInOutCirc,
          onDisplayChange: (isOpen) {
            // _showSnackBar(context, "The menu is ${isOpen ? "open" : "closed"}");
          },
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                fabKey.currentState.close();
                // _showSnackBar(context, "You pressed 1");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountPage(),
                  ),
                );
              },
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(
                Icons.account_circle,
                color: secondaryColor,
                size: 40.0,
              ),
            ),
            RawMaterialButton(
              onPressed: null,
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(
                Icons.question_answer,
                color: nullColor,
                size: 40.0,
              ),
            ),
            RawMaterialButton(
              onPressed: null,
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(
                Icons.portable_wifi_off,
                color: nullColor,
                size: 40.0,
              ),
            ),
            RawMaterialButton(
              onPressed: null,
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(
                Icons.people,
                color: nullColor,
                size: 40.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
