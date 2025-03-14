import 'package:flutter/material.dart';
import 'package:flutter_counter/presentation/screens/counter_functions.dart';
// import 'package:flutter_counter/presentation/screens/counter_basic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: CounterFunctionsScreen(),
    );
  }
}
