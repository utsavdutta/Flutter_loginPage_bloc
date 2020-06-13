import 'package:flutter/material.dart';
import 'blocs/provider.dart';
import 'screens/loginScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Login Screens',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
