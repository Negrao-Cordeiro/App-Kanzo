import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kilombo/utils/animation_particulas.dart';
import 'package:kilombo/utils/navegate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => Navegate.goTowelcome(context));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.light,
      //set brightness for icons, like dark background light icons
    ));
    return Scaffold(
      
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF00c6fb), Color(0xFF005bea)])),
            ),
          ),
          const Positioned.fill(
              child: Opacity(opacity: 0.5, child: AnimacionParticulas(50))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/svg/kilombologo.svg',
                height: 130,
                width: 130,
                color: Colors.white,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              CircularProgressIndicator(
                color: Colors.white,
              ),
              Text(
                'Kanzo',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Sua casa inteligente',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              Padding(padding: EdgeInsets.all(20.0))
            ],
          ),
        ],
      ),
    );
  }
}
