import 'package:counter_bloc/Presentation/counter_screen.dart';
import 'package:counter_bloc/equtable_test.dart';
import 'package:flutter/material.dart';

final Person mohamed = Person(name: "mohamed", age: 12);
final Person mohamed1 = Person(name: "mohamed", age: 12);

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:  CounterScreen(),
    );
  }
}
