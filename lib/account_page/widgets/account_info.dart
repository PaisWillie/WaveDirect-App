import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountInfo extends StatefulWidget {
  final secondaryColor;
  final font;
  final dividerColor;

  AccountInfo({
    @required this.secondaryColor,
    @required this.font,
    @required this.dividerColor,
  });

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  File _image;
  final picker = ImagePicker();
  String firstName = 'Vivian';

  void _imageGalleryOrCamera() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('From Gallery'),
                onPressed: getImageGallery,
              ),
              Icon(Icons.compare_arrows),
              FlatButton(
                child: Text('From Camera'),
                onPressed: getImageCamera,
              ),
            ],
          ),
        );
      },
    );
  }

  Future getImageGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(
      () {
        if (pickedFile != null) {
          _image = File(pickedFile.path);
        } else {
          print('No image selected.');
        }
      },
    );
  }

  Future getImageCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(
      () {
        if (pickedFile != null) {
          _image = File(pickedFile.path);
        } else {
          print('No image selected.');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: widget.secondaryColor,
                      height: 96.0,
                    ),
                    Container(
                      color: Colors.white,
                      height: 60.0,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 96.0,
                child: Container(
                  color: Colors.white,
                  height: 96.0,
                ),
              ),
              Positioned(
                top: 32.0,
                child: Container(
                  padding: EdgeInsets.only(left: 32.0, right: 32.0),
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          radius: 53,
                          backgroundColor: Colors.black26,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: _image != null
                                ? FileImage(_image)
                                : AssetImage(
                                    'assets/images/profile_picture.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 96.0,
                child: RawMaterialButton(
                  onPressed: _imageGalleryOrCamera,
                  elevation: 12.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.camera_alt,
                    size: 18.0,
                  ),
                  // padding: EdgeInsets.all(8.0),
                  shape: CircleBorder(),
                ),
              ),
              Positioned(
                child: Text(
                  'Wecome back, ',
                  style: TextStyle(
                    fontFamily: widget.font,
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                left: 150.0,
                top: 32.0,
              ),
              Positioned(
                child: Row(
                  children: [
                    Text(
                      '$firstName',
                      style: TextStyle(
                        fontFamily: widget.font,
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 8.0,
                      ),
                      alignment: Alignment.bottomLeft,
                      width: 60.0,
                      child: FlatButton(
                        onPressed: () => {},
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                left: 150.0,
                top: 45.0,
              ),
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'vivan.mcdonalid@example.com',
                      style: TextStyle(
                        fontFamily: widget.font,
                        fontSize: 14.0,
                      ),
                    ),
                    Container(
                      height: 4.0,
                    ),
                    Text(
                      '+1 (000)-011-5479',
                      style: TextStyle(
                        // fontFamily: widget.font,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                left: 150.0,
                top: 100.0,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 16.0,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Your current billing',
                          style: TextStyle(
                            fontFamily: widget.font,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'cycle ends in ',
                            style: TextStyle(
                              fontFamily: widget.font,
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '16 days',
                            style: TextStyle(
                              fontFamily: widget.font,
                              fontSize: 16.0,
                              color: widget.secondaryColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RaisedButton(
                      onPressed: () => {},
                      child: Text(
                        'Pay now',
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
            ],
          ),
        ),
      ],
    );
  }
}
