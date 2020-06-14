import 'package:flutter/material.dart';
import 'blocs/provider.dart';
import 'screens/loginScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        theme: ThemeData.dark(),
        title: 'Login Screens',
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white70,
            appBar: AppBar(title: Text('Enter Credentials'),
              backgroundColor: Colors.black,
            ),
            body: LoginScreen(),
          ),
        ),
      ),
    );
  }
}
