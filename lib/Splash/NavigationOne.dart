import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guide/Options/OptionsLanguages.dart';
import 'package:guide/Splash/NavigationTwo.dart';

class Navigationone extends StatefulWidget {
  const Navigationone({super.key});

  @override
  State<Navigationone> createState() => _NavigationoneState();
}

class _NavigationoneState extends State<Navigationone> {
  late SelectedLanguageReceiver _languageReceiver; // Alterado para 'late' para inicialização posterior.

  @override
  void initState() {
    super.initState();
    _languageReceiver = SelectedLanguageReceiver(); // Inicializa aqui.
    _languageReceiver.idiom(); // Configura o idioma.
    _updateTexts(); // Atualiza os textos após a configuração do idioma.
  }

  // Variáveis para os textos
  String inviteToGo = "Go?";
  String packYourBag = "Pack your bag!";
  String discoverWithGuide = "Discover with Guide the best places and hotels to visit, as well as";
  String publicServices = "public services";
  String info_btn = "Selected option";

  // Função para atualizar os textos
  void _updateTexts() {
    setState(() {
      inviteToGo = _languageReceiver.getInviteToGo();
      packYourBag = _languageReceiver.getPackYourBag();
      discoverWithGuide = _languageReceiver.getDiscoverWithGuide();
      publicServices = _languageReceiver.getPublicServices();
      info_btn = _languageReceiver.getInfo_btn();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Obtém as dimensões da tela
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final containerWidth = screenWidth * 0.9; // 90% da largura da tela
    final containerHeight = screenHeight * 0.7; // 70% da altura da tela
    final fontSize = screenWidth * 0.2; // Tamanho da fonte
    final fontSizetwo = screenWidth * 0.05; // Tamanho da fonte
    final fontSizethree = screenWidth * 0.04; // Tamanho da fonte

    Widget buildSquare(double width, double height) {
      return Container(
        width: width,
        height: height,
        color: Colors.white,
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFFFEA29),
      body: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 45, bottom: 20, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 18,
                        height: 12,
                        color: Color(0xFF171717),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 18,
                        height: 12,
                        color: Color(0xFF171717),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 30,
                        height: 12,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(top: 40, bottom: 20, left: 25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        inviteToGo,
                        style: TextStyle(
                          color: Color(0xFFFFEA29),
                          fontSize: fontSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        packYourBag,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSizetwo,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text.rich(
                        TextSpan(
                          text: discoverWithGuide,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSizethree,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: publicServices,
                              style: TextStyle(
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            double screenWidth = MediaQuery.of(context).size.width;

                            int numberOfPoints;
                            if (screenWidth > 600) {
                              numberOfPoints = 16;
                            } else if (screenWidth > 500) {
                              numberOfPoints = 15;
                            } else if (screenWidth > 400) {
                              numberOfPoints = 10;
                            } else if (screenWidth > 300) {
                              numberOfPoints = 5;
                            } else {
                              numberOfPoints = 4;
                            }

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(numberOfPoints, (index) {
                                double height;

                                if (index == 0) {
                                  height = 5;
                                } else {
                                  height = 13;
                                }

                                return Column(
                                  children: [
                                    buildSquare(4, height),
                                    SizedBox(height: 7),
                                  ],
                                );
                              }),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          "lib/images/globo.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const Navigationtwo()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      shadowColor: Colors.black,
                      elevation: 5,
                      minimumSize: const Size(300, 50),
                    ),
                    child: Text(
                      info_btn,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
