import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guide/Splash/NavigationThree.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final fontSizetwo = screenWidth * 0.078;

    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/images/fundologin.png',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 45, bottom: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'lib/images/logooriginal.png',
                      width: 80,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(width: 18, height: 12, color: const Color(0xFF171717)),
                        const SizedBox(width: 8),
                        Container(width: 18, height: 12, color: const Color(0xFF171717)),
                        const SizedBox(width: 8),
                        Container(width: 30, height: 12, color: const Color(0xFFFFEA29)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              Expanded(
                child: Container(
                  width: screenWidth,
                  padding: const EdgeInsets.only(right: 30,left: 30, top:40, bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth,
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: fontSizetwo,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(text: 'Estamos '),
                                TextSpan(
                                  text: 'felizes ',
                                  style: TextStyle(
                                    color: Color(0xFFFFEA29),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(text: 'em\nter você de\n'),
                                TextSpan(
                                  text: 'volta',
                                  style: TextStyle(
                                    color: Color(0xFFFFEA29),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: '.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 40), // Espaço entre o texto e o campo de entrada
                        Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'E-mail ou nome de usuário',
                                labelStyle: TextStyle(color: Colors.grey),
                                suffixIcon: const Icon(Icons.person),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20), // Espaço entre os campos
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                labelStyle: TextStyle(color: Colors.grey),
                                suffixIcon: const Icon(Icons.visibility),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10), // Espaço antes do botão "Esqueci senha"
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text('Esqueci senha', style: TextStyle(color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40), // Espaço antes dos botões
                        Container(
                          width: screenWidth,
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (_) => const Login()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFFEA29),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    elevation: 0,
                                    minimumSize: const Size(300, 50),
                                  ),
                                  child: const Text(
                                    "Entrar",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF171717),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10), // Espaço entre os botões
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (_) => const Navigationthree()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: const BorderSide(color: Color(0xFFFFEA29), width: 2),
                                    ),
                                    elevation: 0,
                                    minimumSize: const Size(300, 50),
                                  ),
                                  child: const Text(
                                    "Voltar",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF171717),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
