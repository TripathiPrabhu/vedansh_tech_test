import 'package:flutter/material.dart';
import 'package:vedansh_tech_test/screens/home_screen.dart';
import 'package:vedansh_tech_test/screens/login-screen.dart';
import 'package:vedansh_tech_test/screens/signUp_screen.dart';
import 'package:vedansh_tech_test/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Vedansh-Test APP',
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context)=>  WelcomeScreen(),
        '/login_screen': (context)=> LoginScreen(),
        '/signup_screen': (context)=> SignupScreen(),
        '/homepage_screen': (context)=> HomeScreen(),
      },
    );
  }
}