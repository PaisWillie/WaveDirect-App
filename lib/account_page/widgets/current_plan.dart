import 'package:flutter/material.dart';

class CurrentPlan extends StatefulWidget {
  final secondaryColor;
  final font;
  final dividerColor;
  final hyperlinkColor;
  final packageID;

  const CurrentPlan({
    @required this.secondaryColor,
    @required this.font,
    @required this.dividerColor,
    @required this.hyperlinkColor,
    @required this.packageID,
  });

  @override
  _CurrentPlanState createState() => _CurrentPlanState();
}

class _CurrentPlanState extends State<CurrentPlan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Current Plan',
            style: TextStyle(
              fontFamily: widget.font,
              fontSize: 32.0,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Divider(
          color: widget.dividerColor,
          height: 5.0,
          thickness: 2.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Align(
              // alignment: Alignment.centerLeft,
              /*child:*/ Text(
                'Unlimited ${(widget.packageID + 1) * 10}',
                style: TextStyle(
                  fontFamily: widget.font,
                  fontSize: 24.0,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0),
                child: widget.packageID == 4
                    ? Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: const Text(
                            'BEST VALUE',
                            style: TextStyle(
                              fontFamily: 'Traffolight',
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(color: widget.secondaryColor),
                        height: 28.0,
                        width: 110.0,
                      )
                    : null,
              ),
            ],
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Tap here to upgrade your plan!',
              style: TextStyle(
                fontFamily: widget.font,
                fontSize: 16.0,
                color: widget.hyperlinkColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
