import 'package:flutter/material.dart';

class OutageMap extends StatelessWidget {
  final secondaryColor;
  final font;
  final dividerColor;

  OutageMap({
    @required this.secondaryColor,
    @required this.font,
    @required this.dividerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: secondaryColor,
                  height: 96.0,
                ),
                Container(
                  color: Colors.white,
                  height: 60.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
