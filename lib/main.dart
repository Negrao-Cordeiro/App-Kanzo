import 'package:flutter/material.dart';
import 'package:kilombo/pages/login_screen.dart';
import 'package:kilombo/pages/splash_screen.dart';
import 'package:kilombo/pages/welcome_screen.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: routs,
    ));
var routs = <String, WidgetBuilder>{
  "/welcome": (BuildContext context) => const WelcomeScreens(),
  "/login": (BuildContext context) => const LoginScrenn()
};
