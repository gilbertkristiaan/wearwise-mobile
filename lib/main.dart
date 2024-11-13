import 'package:flutter/material.dart';
import 'package:wearwise_mobile/screens/menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wearwise Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch( primarySwatch: Colors.deepPurple, ).copyWith(secondary: Colors.deepPurple[400]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}