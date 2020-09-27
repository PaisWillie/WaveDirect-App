import 'package:flutter/material.dart';
import 'package:wavedirect/global_widgets/animation/FadeAnimation.dart';
import 'package:wavedirect/global_widgets/circular_menu.dart';

class Referral extends StatefulWidget {
  final secondaryColor;
  final font;
  final dividerColor;
  bool submitted = false;

  Referral({
    @required this.secondaryColor,
    @required this.font,
    @required this.dividerColor,
  });

  @override
  _ReferralState createState() => _ReferralState();
}

class _ReferralState extends State<Referral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Stack(
              children: <Widget>[
                Container(
                  color: widget.secondaryColor,
                  height: MediaQuery.of(context).size.height / 4,
                ),
                Positioned(
                  top: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 300.0,
                        padding: EdgeInsets.symmetric(horizontal: 50.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FadeAnimation(
                            1.0,
                            Text(
                              'Refer a friend!',
                              style: TextStyle(
                                  fontFamily: widget.font,
                                  fontSize: 32.0,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 50.0),
                        child: FadeAnimation(
                          1.1,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Both you and your friend will get ',
                                style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 14.0,
                                    color: Colors.white70),
                              ),
                              Text(
                                '\$',
                                style: TextStyle(
                                    // fontFamily: font,
                                    fontSize: 14.0,
                                    color: Colors.white70),
                              ),
                              Text(
                                '10 credit!',
                                style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 14.0,
                                    color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 50,
                ),
                child: widget.submitted == false
                    ? SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: FadeAnimation(
                                1.2,
                                Text(
                                  'Enter contact details of recipient',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: widget.font,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                            FadeAnimation(
                              1.3,
                              Divider(
                                thickness: 5.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            FadeAnimation(
                              1.4,
                              TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  // labelText: 'Contact details:',
                                  hintText: 'Name',
                                ),
                                onSubmitted: (String value) => {},
                              ),
                            ),
                            FadeAnimation(
                              1.5,
                              TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  // labelText: 'Contact details:',
                                  hintText: 'Phone',
                                ),
                                onSubmitted: (String value) => {},
                              ),
                            ),
                            FadeAnimation(
                              1.6,
                              TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  // labelText: 'Contact details:',
                                  hintText: 'Email',
                                ),
                                onSubmitted: (String value) => {},
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            FadeAnimation(
                              1.7,
                              RaisedButton(
                                onPressed: () => {
                                  setState(() => {widget.submitted = true}),
                                  print('done'),
                                },
                                child: Text(
                                  'Send',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: widget.font,
                                    fontSize: 16.0,
                                  ),
                                ),
                                color: widget.secondaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.red)),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        height: 244,
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 75.0,
                              ),
                              Text(
                                'Referral sent!',
                                style: TextStyle(
                                    fontFamily: widget.font, fontSize: 20.0),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
              FadeAnimation(
                1.8,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedOverflowBox(
                    size: Size(300, 261),
                    child: Container(
                      width: double.infinity,
                      height: 240.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/friends.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: CircularMenu(),
    );
  }
}
