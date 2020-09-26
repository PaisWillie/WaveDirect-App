import 'package:flutter/material.dart';
import 'package:wavedirect/account%20page/account_info.dart';
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
      /*appBar: AppBar(
        title: Text(
          'Account Information',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontFamily: _font,
            // _fontStyle: _FontStyle.values,
          ),
        ),
        backgroundColor: _secondaryColor,
      ),*/
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              AccountInfo(
                secondaryColor: _secondaryColor,
                font: _font,
                dividerColor: _dividerColor,
              ),
              Container(
                padding: EdgeInsets.only(left: 32.0, bottom: 32.0, right: 32.0),
                child: CurrentPlan(
                  secondaryColor: _secondaryColor,
                  font: _font,
                  dividerColor: _dividerColor,
                  hyperlinkColor: _hyperlinkColor,
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
