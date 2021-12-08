import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // run app can take 3 types of application
  // WidgetsApp - low level, it will not provide an in built design for app
  // MaterialApp - universal design
  // CupertinoApp - human interface design, can change design based on operating system
  runApp(const MyApp());
}

// if materialApp is declared outside of the of the runApp function
// then we dont have to hot reload again and again
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
