import 'package:flutter/material.dart';
import 'package:mobileappweek2/config/constant.dart';
import 'package:mobileappweek2/screen/dashboard.dart';
import 'package:mobileappweek2/screen/login.dart';
import 'package:mobileappweek2/screen/packageimage.dart';
import 'package:mobileappweek2/screen/packagelocation.dart';
import 'package:mobileappweek2/screen/packagevideo.dart';
import 'package:mobileappweek2/screen/register.dart';
import 'screen/home.dart';
import 'screen/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Login': (context) => Login(),
        'Register': (context) => Register(),
        'Dashboard': (context) => Dashboard(),
        'Image': (context) => PackageImage(),
        'Video': (context) => PackageVideo(),
        'Location': (context) => PackageLocation(),
      },
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}
