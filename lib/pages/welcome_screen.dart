import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kilombo/utils/animation_particulas.dart';
import 'package:kilombo/utils/navegate.dart';

class WelcomeScreens extends StatefulWidget {
  const WelcomeScreens({Key? key}) : super(key: key);

  @override
  _WelcomeScreensState createState() => _WelcomeScreensState();
}

class _WelcomeScreensState extends State<WelcomeScreens> {
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
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 35,
                    ),
                    SvgPicture.asset('assets/svg/kilombologo.svg',
                        height: 130, width: 130, color: Colors.white),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Bem vindo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        width: 300,
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Ao Kanzo, a sua casa inteligente.\n',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              TextSpan(
                                  text:
                                      'Liga todos os aparelhos electrónicos da sua casa aqui no seu aplicativo Kanzo',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white)),
                            ])),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                          height: 49,
                          minWidth: 285,
                          color: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: const Text(
                            'Emergências',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                          onPressed: () {}),
                      const SizedBox(
                        height: 16,
                      ),
                      MaterialButton(
                          height: 49,
                          minWidth: 285,
                          color: Colors.white.withOpacity(0.25),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: const Text(
                            'Acesse ao Kanzo',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          onPressed: () {
                            Navegate.goTologin(context);
                          }),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'O acesso ao Kanzo, é só para familías, ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            'cadastrada na nossa plataforma ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
