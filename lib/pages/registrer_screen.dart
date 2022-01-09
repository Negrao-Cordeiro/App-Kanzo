
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kilombo/pages/login_screen.dart';
import 'package:kilombo/utils/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
bool _shouwpassword = false;
class _RegisterScreenState extends State<RegisterScreen> {

@override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: size.height,
          child: Form(
            
            child: Stack(
              children: <Widget>[
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
                      SvgPicture.asset(
                        "assets/svg/home_rafiki.svg",
                        height: size.height * 0.33,
                      ),
                      const Text(
                        "Cadastrar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: kPrimaryColor),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 2),
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
                              Icons.person_outline_rounded,
                              color: kPrimaryColor,
                            ),
                            labelText: 'Nome do Usuário',
                            labelStyle: TextStyle(fontSize: 15),
                          ),
                          
                        ),
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
                            ),
                          
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 1),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          color: kPrimaryLightColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextFormField(
                          autofocus: false,
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
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                              },
                              child: const Text(
                                'Cadastrar',
                                style: TextStyle(fontSize: 18.0),
                              )),
                          TextButton(
                              onPressed: () {
                              
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginScrenn()),
                                );
                              },
                              child: const Text(
                                'Voltar ao Login',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ))
                        ],
                      ),
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}