import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Atiga',
          primaryColor: Colors.teal[900],
          accentColor: Colors.white),
      home: const Welcome(),
    );
  }
}
