
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kilombo/utils/constants.dart';

import 'forgot_pass.dart';

class LoginScrenn extends StatefulWidget {
  const LoginScrenn({Key? key}) : super(key: key);

  @override
  _LoginScrennState createState() => _LoginScrennState();
}

bool _shouwpassword = false;

class _LoginScrennState extends State<LoginScrenn> {
  @override
  @override
  Widget build(BuildContext context) {
    // Este codigo aqui colocar os icones da barra de status em preto e transparente
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: size.height,
        child: Form(
            child: Stack(alignment: Alignment.center, children: <Widget>[
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
                "assets/svg/home_pana.svg",
                height: size.height * 0.38,
              ),
              const Text(
                "Bem vindo de volta",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kPrimaryColor),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextFormField(
                      autofocus: false,
                      cursorColor: kPrimaryColor,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: kPrimaryColor,
                        ),
                        labelText: 'Email do Usuário',
                        labelStyle: TextStyle(fontSize: 15),
                      ))),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  autofocus: false,
                  // Esse codigo verifica se o botão clidado esta verdeiro ou falso
                  // E se estiver mostra a senha ou coloca invisivel a senha
                  obscureText: _shouwpassword == false ? true : false,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Senha do Usuário',
                    labelStyle: const TextStyle(fontSize: 15),
                    prefixIcon: const Icon(
                      Icons.password_outlined,
                      color: kPrimaryColor,
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        // Esse codigo verifica se o botão clidado esta verdeiro ou falso
                  // E se estiver mostra a senha ou coloca invisivel a senha
                          _shouwpassword == false
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: kPrimaryColor),
                      onTap: () {
                        setState(() {
                          _shouwpassword = !_shouwpassword;
                        });
                      },
                    ),
                    //border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Acessar',
                          style: TextStyle(fontSize: 18.0),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPass()),
                          );
                        },
                        child: const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(fontSize: 12.0),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ])),
      ),
    ));
  }
}
