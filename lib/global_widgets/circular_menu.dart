import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

import 'package:wavedirect/account_page/account.dart';
import 'package:wavedirect/outage_map_page/outage_map_page.dart';
import 'package:wavedirect/referral_page/referral.dart';
import 'package:wavedirect/support_chat/ui/message_screen/message_screen.dart';

class CircularMenu extends StatelessWidget {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Colors.white /*Theme.of(context).primaryColor*/;
    final secondaryColor = Color(0xFFb01116);
    const _font = 'Traffolight';
    const _dividerColor = Color(0xFFC0C0C0);

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
            onPressed: () {
              fabKey.currentState.close();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen('Customer'),
                ),
              );
              //
              // _showSnackBar(context, "You pressed 2");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Icon(
              Icons.question_answer,
              color: secondaryColor,
              size: 40.0,
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              fabKey.currentState.close();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OutageMap(
                      secondaryColor: secondaryColor,
                      font: _font,
                      dividerColor: _dividerColor),
                ),
              );
              // _showSnackBar(context, "You pressed 3");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Icon(
              Icons.portable_wifi_off,
              color: secondaryColor,
              size: 40.0,
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(
              // context, "You pressed 4. This one closes the menu on tap");
              fabKey.currentState.close();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Referral(
                      secondaryColor: secondaryColor,
                      font: _font,
                      dividerColor: _dividerColor),
                ),
              );
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: Icon(
              Icons.people,
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
