import 'package:flutter/material.dart';
import 'package:wavedirect/account_page/widgets/package_select.dart';

class CurrentPlan extends StatefulWidget {
  final secondaryColor;
  final font;
  final dividerColor;
  final hyperlinkColor;
  final int packageID;

  CurrentPlan({
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
  void _selectPackage() {
    // print('Running _selectPackage');
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          padding: EdgeInsets.all(5.0),
          child: PackageSelect(
            font: widget.font,
            secondaryColor: widget.secondaryColor,
            packageID: widget.packageID,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Current Package',
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
                child: widget.packageID == 3
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
        Card(
          margin: EdgeInsets.only(bottom: 32.0),
          elevation: 12.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: ClipPath(
            clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            child: Container(
              height: 225,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: widget.secondaryColor,
                    width: 10,
                  ),
                ),
              ),
              child: Container(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              right: 16.0,
                              left: 32.0,
                            ),
                            child: Icon(
                              Icons.cloud_download,
                              color: Colors.green,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Up to',
                                  style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 12.0,
                                    color: Colors.black45,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '40 Mbps',
                                  style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 24.0,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Total Download Speed',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontFamily: widget.font,
                                    fontSize: 12.0,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              right: 16.0,
                              left: 32.0,
                            ),
                            child: Icon(
                              Icons.cloud_upload,
                              color: widget.secondaryColor,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Up to',
                                  style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 12.0,
                                    color: Colors.black45,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '20 Mbps',
                                  style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 24.0,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Upload',
                                  style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 12.0,
                                    color: Colors.black45,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              right: 16.0,
                              left: 32.0,
                            ),
                            child: Icon(
                              Icons.all_inclusive,
                              color: Colors.blue,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Unlimited',
                                  style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 24.0,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Monthly Usage',
                                  style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 12.0,
                                    color: Colors.black45,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: _selectPackage,
              color: Colors.white,
              child: Text(
                'Need faster internet?',
                style: TextStyle(
                  fontFamily: widget.font,
                  fontSize: 16.0,
                  color: widget.hyperlinkColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
