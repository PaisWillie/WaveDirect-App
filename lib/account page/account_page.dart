import 'package:flutter/material.dart';
import 'package:wavedirect/account%20page/current_plan.dart';
import '../global widgets/circular_menu.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    const _secondaryColor = Color(0xFFb01116);
    const _font = 'Traffolight';
    const _dividerColor = Color(0xFFC0C0C0);
    const _hyperlinkColor = Color(0xFF3366BB);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WaveDirect',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontFamily: _font,
            // _fontStyle: _FontStyle.values,
          ),
        ),
        backgroundColor: _secondaryColor,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Expanded(
            child: Column(
              children: <Widget>[
                CurrentPlan(
                  secondaryColor: _secondaryColor,
                  font: _font,
                  dividerColor: _dividerColor,
                  hyperlinkColor: _hyperlinkColor,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CircularMenu(),
    );
  }
}
