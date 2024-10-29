import 'package:flutter/material.dart';
import 'package:myapp/screens/welcome_screen.dart';
// START DART CODE FOR AR
// END DART CODE FOR AR

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
