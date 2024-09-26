import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guide/Options/OptionsLanguages.dart';
import 'package:guide/Splash/NavigationOne.dart';
import 'package:guide/Splash/NavigationThree.dart';

class Navigationtwo extends StatefulWidget {
  const Navigationtwo({super.key});

  @override
  State<Navigationtwo> createState() => _NavigationtwoState();
}

class _NavigationtwoState extends State<Navigationtwo> {
  late SelectedLanguageReceiver _languageReceiver; // Alterado para 'late' para inicialização posterior.

  @override
  void initState() {
    super.initState();
    _languageReceiver = SelectedLanguageReceiver(); // Inicializa aqui.
    _languageReceiver.idiom(); // Configura o idioma.
    _updateTexts(); // Atualiza os textos após a configuração do idioma.
  }

  // Variáveis para os textos
  String culturalPoints = "Cultural Points";
  String guideOffer = "The Guide offers the most visited places for you!";
  String travelWith = "Travel with";
  String info_btn = "Selected option";

  // Função para atualizar os textos
  void _updateTexts() {
    setState(() {
      culturalPoints = _languageReceiver.getCulturalPoints();
      guideOffer = _languageReceiver.getGuideOffer();
      travelWith = _languageReceiver.getTravelWith();
      info_btn = _languageReceiver.getInfo_btn();
    });
  }

  @override
  Widget build(BuildContext context) {

    // Obtém as dimensões da tela
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    // Define a largura e a altura proporcionais
    final containerWidth = screenWidth * 0.9; // 90% da largura da tela
    final containerHeight = screenHeight * 0.35; // 70% da altura da tela
    // Define o tamanho da fonte proporcional à largura da tela
    final fontSize = screenWidth * 0.2; // Ajuste a porcentagem conforme necessário
    final fontSizetwo = screenWidth * 0.1; // Ajuste a porcentagem conforme necessário
    final fontSizethree = screenWidth * 0.04; // Ajuste a porcentagem conforme necessário

    return Scaffold(
      backgroundColor: const Color(0xFF171717), // Define a cor de fundo da tela
      body: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 45, bottom: 20, left: 20, right: 20 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight, // Alinha o Row à direita
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    // Faz o Row ocupar o menor espaço possível
                    children: [
                      Container(
                        width: 18, // Define a largura do quadrado
                        height: 12, // Define a altura do quadrado
                        color: Color(0xFFFFEA29), // Cor preta
                      ),
                      SizedBox(width: 8), // Espaço entre os quadrados
                      Container(
                        width: 18, // Define a largura do quadrado
                        height: 12, // Define a altura do quadrado
                        color: Color(0xFFFFEA29), // Cor preta
                      ),
                      SizedBox(width: 8), // Espaço entre os quadrados
                      Container(
                        width: 30, // Define a largura do quadrado
                        height: 12, // Define a altura do quadrado
                        color: Colors.white, // Cor branca
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFEA29), // Cor de fundo
                    borderRadius: BorderRadius.circular(10), // Borda arredondada
                  ),
                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 25, right: 25), // Padding interno
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start, // Alinha os componentes à esquerda
                    children: [
                      Text(
                        "+600",
                        style: TextStyle(
                          color: Color(0xFF171717), // Cor amarela
                          fontSize: fontSize, // Tamanho da fonte
                          fontFamily: 'Inter', // Família da fonte
                          fontWeight: FontWeight.w700, // Peso da fonte (mais grosso)
                        ),
                      ),
                      Text(
                        culturalPoints,
                        style: TextStyle(
                          color: Color(0xFF171717), // Cor amarela
                          fontSize: fontSizetwo, // Tamanho da fonte
                          fontFamily: 'Inter', // Família da fonte
                          fontWeight: FontWeight.w700, // Peso da fonte (mais grosso)
                        ),
                      ),

                      Text(
                        guideOffer,
                        style: TextStyle(
                          color: Color(0xFF171717), // Cor amarela
                          fontSize: fontSizethree, // Tamanho da fonte
                          fontFamily: 'Inter', // Família da fonte
                          fontWeight: FontWeight.w500, // Peso da fonte (mais grosso)
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: Color(0xFF343434), // Cor de fundo
                    borderRadius: BorderRadius.circular(10), // Borda arredondada
                  ),
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25), // Padding interno
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start, // Alinha os componentes à esquerda
                    children: [

                      Text(
                        travelWith,
                        style: TextStyle(
                          color: Colors.white, // Cor amarela
                          fontSize: fontSizetwo, // Tamanho da fonte
                          fontFamily: 'Inter', // Família da fonte
                          fontWeight: FontWeight.w700, // Peso da fonte (mais grosso)
                        ),
                      ),

                      Image.asset(
                        "lib/images/logoguide.png",
                        width: 185,
                        fit: BoxFit.contain, // Ajusta a imagem para caber no Container
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 5, // Define a largura do quadrado
                            height: 4, // Define a altura do quadrado
                            color: Colors.white, // Cor preta
                          ),
                          Container(
                            width: 5, // Define a largura do quadrado
                            height: 4, // Define a altura do quadrado
                            color: Colors.white, // Cor preta
                          ),
                          Container(
                            width: 10, // Define a largura do quadrado
                            height: 4, // Define a altura do quadrado
                            color: Color(0xFFFFEA29), // Cor preta
                          ),
                          Container(
                            width: 10, // Define a largura do quadrado
                            height: 4, // Define a altura do quadrado
                            color: Color(0xFFFFEA29), // Cor preta
                          ),
                          Container(
                            width: 10, // Define a largura do quadrado
                            height: 4, // Define a altura do quadrado
                            color: Color(0xFFFFEA29), // Cor preta
                          ),
                          Container(
                            width: 10, // Define a largura do quadrado
                            height: 4, // Define a altura do quadrado
                            color: Color(0xFFFFEA29), // Cor preta
                          ),
                          Container(
                            width: 10, // Define a largura do quadrado
                            height: 4, // Define a altura do quadrado
                            color: Color(0xFFFFEA29), // Cor preta
                          ),
                          Container(
                            width: 10, // Define a largura do quadrado
                            height: 4, // Define a altura do quadrado
                            color: Color(0xFFFFEA29), // Cor preta
                          ),
                          SizedBox(height: 10),
                          Image.asset(
                            "lib/images/stickdescolando.png",
                            width: 70,
                            fit: BoxFit.contain, // Ajusta a imagem para caber no Container
                          ),

                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.only(bottom: 10), // Margem inferior de 10px
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const Navigationthree()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF343434),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      shadowColor: Colors.black, // Cor da sombra
                      elevation: 5, // Elevação para a sombra
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
                )


              ],
            ),
          )),
    );
  }
}
