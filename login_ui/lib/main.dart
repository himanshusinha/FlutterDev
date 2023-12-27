import 'package:flutter/material.dart';
import 'package:login_ui/SignUp.dart';
import 'package:login_ui/SignIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SignIn(),
        '/SignUp': (context) => SignUp(),
      },
    );
  }
}
