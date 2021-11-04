import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobileappweek2/config/constant.dart';
import 'package:mobileappweek2/screen/dashboard.dart';
import 'package:mobileappweek2/screen/firebaselogin.dart';
import 'package:mobileappweek2/screen/firebaseregister.dart';
import 'package:mobileappweek2/screen/login.dart';
import 'package:mobileappweek2/screen/packageimage.dart';
import 'package:mobileappweek2/screen/packagelocation.dart';
import 'package:mobileappweek2/screen/packagevideo.dart';
import 'screen/index.dart';

// void main() => runApp(MyApp());

Future<void> main() async {
  // เปิด Connection ไปที่ Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Run App
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Index': (context) => Index(),
        'Login': (context) => FirebaseLogin(),
        'Register': (context) => FirebaseRegister(),
        'Dashboard': (context) => Dashboard(),
        'Image': (context) => PackageImage(),
        'Video': (context) => PackageVideo(),
        'Location': (context) => PackageLocation(),
      },
      theme: ThemeData(
        primaryColor: sColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}
