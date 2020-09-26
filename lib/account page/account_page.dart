import 'package:flutter/material.dart';
import '../global widgets/circular_menu.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final secondaryColor = Color(0xFFb01116);
    final font = 'Typo-Round';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WaveDirect',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontFamily: font,
            // fontStyle: FontStyle.values,
          ),
        ),
        backgroundColor: secondaryColor,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Input Widgets Here!',
                style: TextStyle(
                  fontFamily: font,
                ),
              ),
              Text(
                'Current Plan',
                style: TextStyle(
                  fontFamily: font,
                  fontSize: 32.0,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CircularMenu(),
    );
  }
}
