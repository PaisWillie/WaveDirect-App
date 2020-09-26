import 'package:flutter/material.dart';
// import 'current_plan.dart';

class PackageSelect extends StatefulWidget {
  final font;
  final secondaryColor;
  final int packageID;
  final Function selectHandler;

  PackageSelect({
    @required this.font,
    @required this.secondaryColor,
    @required this.packageID,
    @required this.selectHandler,
  });

  @override
  _PackageSelectState createState() => _PackageSelectState();
}

class _PackageSelectState extends State<PackageSelect> {
  // int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        : () => widget.selectHandler(i),
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
                            "Unlimited ${(i + 1) * 10} ",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: widget.font,
                              decoration: i == widget.packageID
                                  ? TextDecoration.lineThrough
                                  : null,
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
      ],
    );
  }
}
