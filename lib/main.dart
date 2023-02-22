import 'package:flutter/material.dart';
import 'api.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _api = Api();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random user API CALL',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
