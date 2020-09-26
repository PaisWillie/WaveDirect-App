import 'package:flutter/material.dart';
import 'package:wavedirect/account_page/widgets/account_info.dart';
import 'package:wavedirect/account_page/widgets/current_plan.dart';
import 'package:wavedirect/account_page/widgets/package_select.dart';
import '../global_widgets/circular_menu.dart';
import 'package:wavedirect/global_widgets/animation/FadeAnimation.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _packageID = 3;

  @override
  Widget build(BuildContext context) {
    const _secondaryColor = Color(0xFFb01116);
    const _font = 'Traffolight';
    const _dividerColor = Color(0xFFC0C0C0);
    const _hyperlinkColor = Color(0xFF3366BB);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              FadeAnimation(
                1,
                AccountInfo(
                  secondaryColor: _secondaryColor,
                  font: _font,
                  dividerColor: _dividerColor,
                ),
              ),
              FadeAnimation(
                1.2,
                Container(
                  padding:
                      EdgeInsets.only(left: 32.0, bottom: 32.0, right: 32.0),
                  child: CurrentPlan(
                    secondaryColor: _secondaryColor,
                    font: _font,
                    dividerColor: _dividerColor,
                    hyperlinkColor: _hyperlinkColor,
                    packageID: _packageID,
                  ),
                ),
              ),
              FadeAnimation(
                1.4,
                PackageSelect(
                  font: _font,
                  secondaryColor: _secondaryColor,
                  packageID: _packageID,
                  selectHandler: updatePackage,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CircularMenu(),
    );
  }

  void updatePackage(int i) {
    setState(() {
      _packageID = i;
    });
  }
}
