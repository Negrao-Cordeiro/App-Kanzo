// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kilombo/pages/login_screen.dart';
import 'package:kilombo/pages/registrer_screen.dart';
import 'package:kilombo/utils/constants.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              height: size.height,
              child: Form(
                
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        "assets/png/main_top.png",
                        width: size.width * 0.35,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/png/login_bottom.png",
                        width: size.width * 0.4,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: size.height * 0.01),
                        SvgPicture.asset(
                          "assets/svg/home_forgot.svg",
                          height: size.height * 0.38,
                        ),
                        Text(
                          "Restaurar Senha",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: kPrimaryColor),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                              color: kPrimaryLightColor,
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: TextFormField(
                              autofocus: false,
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.alternate_email,
                                  color: kPrimaryColor,
                                ),
                                labelText: 'Email do Usuário',
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                            
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    
                                  },
                                  child: Text(
                                    'Enviar no email',
                                    style: TextStyle(fontSize: 18.0),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginScrenn()));
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(fontSize: 18.0),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Não tens uma conta?'),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (context, a, b) =>
                                                RegisterScreen(),
                                            transitionDuration:
                                                Duration(seconds: 0)),
                                        (route) => false);
                                  },
                                  child: Text('Criar conta'))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ])))),
    );
  }
}
