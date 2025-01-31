import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';
import 'package:flutter_app/screens/location_page.dart';
import 'package:flutter_app/screens/settings_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner : false,
      routes: {
        '/': (context) => HomePage(),
        '/location': (context) => LocationPage(),
        '/settings': (context) => SettingsPage(),
      },
      initialRoute: '/'
    );
  }
}