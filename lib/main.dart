import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/screens/login_form.dart';
import 'package:splashscreen/screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appName = 'Luminar Assign';
    return MaterialApp(
      title: appName,
      theme:ThemeData(
        // Define the default brightness and colors.
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        primaryColor: Colors.white,
        backgroundColor: Colors.red,

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        // textTheme: const TextTheme(
        //   headline1: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold),
        //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
        //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        // ),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUp())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.blue,
          Colors.red,
        ],
      )),
      child: FlutterLogo(size: MediaQuery.of(context).size.height),
    );
  }
}

//   Widget build(BuildContext context) {
//     return Container(
//        // color: Colors.yellow,
//
//         child:FlutterLogo(size:MediaQuery.of(context).size.height),
//     );
//   }
// }
