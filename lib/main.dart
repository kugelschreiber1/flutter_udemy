import 'package:flutter/material.dart';
import 'package:flutter_udemy/constants/dice_roller.dart';
import 'package:flutter_udemy/constants/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GradientContainer(
          colors: [
            Colors.deepPurple.shade800,
            Colors.deepPurple.shade900,
          ],
          beginPosition: Alignment.topCenter,
          endPosition: Alignment.bottomCenter,
          child: const DiceRoller(),
        ),
      ),
    );
  }
}
