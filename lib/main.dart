import 'package:flutter/material.dart';
import 'package:flutter_udemy/constants/styled_text.dart';
import 'constants/gradient_container.dart';

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
    return Scaffold(
      body: GradientContainer(
        colors: [
          Colors.deepPurple.shade700,
          Colors.deepPurple.shade800,
          Colors.deepPurple.shade900,
        ],
        beginPosition: Alignment.topLeft,
        endPosition: Alignment.bottomRight,
        child: const Center(
          child: StyledText(
            text: "Hello World",
          ),
        ),
      ),
    );
  }
}
