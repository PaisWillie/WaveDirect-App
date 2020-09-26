import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class CircularMenu extends StatelessWidget {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Colors.white /*Theme.of(context).primaryColor*/;
    final secondaryColor = Color(0xFFb01116);

    return Builder(
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
            onPressed: () {
              fabKey.currentState.close();
              // _showSnackBar(context, "You pressed 2");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Icon(
              Icons.announcement,
              color: secondaryColor,
              size: 40.0,
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              fabKey.currentState.close();
              // _showSnackBar(context, "You pressed 3");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Icon(
              Icons.wifi,
              color: secondaryColor,
              size: 40.0,
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(
              // context, "You pressed 4. This one closes the menu on tap");
              fabKey.currentState.close();
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Icon(
              Icons.settings,
              color: secondaryColor,
              size: 40.0,
            ),
          )
        ],
      ),
    );
  }

  /*void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
    ));
  }*/
}
