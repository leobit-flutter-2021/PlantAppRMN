import 'package:flutter/material.dart';
import 'package:plant_app/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(61, 88, 79, 1),
      ),
      home: const MainScreen(),
    );
  }
}
