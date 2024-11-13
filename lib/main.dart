import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Theme Switcher',
      theme: _isDarkMode ? MyTheme.darkTheme : MyTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Theme Switcher'),
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
              onPressed: () {
                setState(() {
                  _isDarkMode = !_isDarkMode;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Text(
            '(JOHN 3:16) For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.',
            style: TextStyle(
              fontSize: 50.0, // Increase this value to make the font larger
            ),
          ),
        ),
      ),
    );
  }
}
