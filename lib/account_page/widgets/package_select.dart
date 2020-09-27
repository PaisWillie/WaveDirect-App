import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'current_plan.dart';

class PackageSelect extends StatefulWidget {
  final font;
  final secondaryColor;
  final int packageID;

  PackageSelect({
    @required this.font,
    @required this.secondaryColor,
    @required this.packageID,
  });

  @override
  _PackageSelectState createState() => _PackageSelectState();
}

class _PackageSelectState extends State<PackageSelect> {
  // int _pageIndex = 0;

  Future<void> _makePhoneCall() async {
    String url = 'tel:5197379283';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.only(
              top: 8.0,
            ),
            child: Text(
              'Available packages',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: widget.font,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 4.0),
          child: Divider(
            thickness: 3.0,
            color: Colors.black54,
          ),
        ),
        Center(
          child: SizedBox(
            height: 75, // card height
            child: PageView.builder(
              itemCount: 5,
              controller: PageController(viewportFraction: 0.7),
              // onPageChanged: (int index) =>
              // setState(() => {_pageIndex = index}),
              itemBuilder: (_, i) {
                return Transform.scale(
                  scale: 0.9,
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: i == widget.packageID
                        ? null
                        : () => null /*Call company phone # */,
                    // hoverColor:
                    // i == _index ? widget.secondaryColor : Colors.white,
                    elevation: 10,
                    hoverElevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            i == widget.packageID
                                ? "Current Package"
                                : "Unlimited ${(i + 1) * 10} ",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: widget.font,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${(i + 1) * 10} mb/s ',
                                style: TextStyle(
                                  fontFamily: widget.font,
                                ),
                              ),
                              Icon(
                                Icons.cloud_download,
                                color: Colors.green,
                              ),
                              Text(
                                ' ${((i + 1) * 10) ~/ 2} mb/s ',
                                style: TextStyle(
                                  fontFamily: widget.font,
                                ),
                              ),
                              Icon(
                                Icons.cloud_upload,
                                color: widget.secondaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 4.0),
          child: OutlineButton(
            onPressed: () => {
              _makePhoneCall(),
            },
            child: Text('Call WaveDirect'),
          ),
        ),
      ],
    );
  }
}
