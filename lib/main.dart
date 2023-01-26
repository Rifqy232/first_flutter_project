import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

void main() => runApp(const WhatsApp());

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF075e54),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}