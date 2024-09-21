import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guide/Splash/NavigationTwo.dart';

class Navigationone extends StatefulWidget {
  const Navigationone({super.key});

  @override
  State<Navigationone> createState() => _NavigationoneState();
}

class _NavigationoneState extends State<Navigationone> {
  @override
  Widget build(BuildContext context) {

    // Obtém as dimensões da tela
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    // Define a largura e a altura proporcionais
    final containerWidth = screenWidth * 0.9; // 90% da largura da tela
    final containerHeight = screenHeight * 0.7; // 70% da altura da tela
    // Define o tamanho da fonte proporcional à largura da tela
    final fontSize = screenWidth * 0.2; // Ajuste a porcentagem conforme necessário
    final fontSizetwo = screenWidth * 0.06; // Ajuste a porcentagem conforme necessário
    final fontSizethree = screenWidth * 0.04; // Ajuste a porcentagem conforme necessário

    Widget buildSquare(double width, double height) {
      return Container(
        width: width,
        height: height,
        color: Colors.white, // Cor branca
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFFFEA29), // Define a cor de fundo da tela
      body: Container(
          child: Padding(
        padding: EdgeInsets.only(top: 60, bottom: 10, left: 20, right: 20 ),
        child: Column(
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
                    color: Color(0xFF171717), // Cor preta
                  ),
                  SizedBox(width: 8), // Espaço entre os quadrados
                  Container(
                    width: 18, // Define a largura do quadrado
                    height: 12, // Define a altura do quadrado
                    color: Color(0xFF171717), // Cor preta
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
                color: Color(0xFF1E1E1E), // Cor de fundo
                borderRadius: BorderRadius.circular(10), // Borda arredondada
              ),
              padding: EdgeInsets.only(top: 40, bottom: 20, left: 25, right: 25),
              // Padding interno
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaço entre os filhos
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinha os componentes à esquerda
                  children: [
                    Text(
                      "Bora?",
                      style: TextStyle(
                        color: Color(0xFFFFEA29), // Cor amarela
                        fontSize: fontSize, // Tamanho da fonte
                        fontFamily: 'Inter', // Família da fonte
                        fontWeight: FontWeight.w700, // Peso da fonte (mais grosso)
                      ),
                    ),
                    Text(
                      "Arrume a mala!",
                      style: TextStyle(
                        color: Colors.white, // Cor amarela
                        fontSize: fontSizetwo, // Tamanho da fonte
                        fontFamily: 'Inter', // Família da fonte
                        fontWeight: FontWeight.w600, // Peso da fonte (mais grosso)
                      ),
                    ),
                    SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        text: "Descubra com o Guide os melhores lugares e hoteis para visitar, Além de ",
                        style: TextStyle(
                          color: Colors.white, // Cor para o texto normal
                          fontSize: fontSizethree, // Tamanho da fonte
                          fontFamily: 'Inter', // Família da fonte
                          fontWeight: FontWeight.w400, // Peso da fonte (mais grosso)
                        ),
                        children: <TextSpan>[ // para personalizar outros textos
                          TextSpan(
                            text: "serviços públicos.",
                            style: TextStyle(
                              color: Colors.yellow, // Cor amarela para "serviços públicos"
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),
                    Align(
                     alignment: Alignment.center, // Alinha o Row à direita
                     child: LayoutBuilder(
                     builder: (context, constraints) {
                      // Obtenha a largura da tela usando MediaQuery
                     double screenWidth = MediaQuery.of(context).size.width;

                      // Ajuste o número de pontos de acordo com o tamanho da tela
                     int numberOfPoints;
                     if (screenWidth > 600) {
                      numberOfPoints = 16; // Para telas maiores (acima de 600), exibe 15 pontos
                    } else if (screenWidth > 500) {
                      numberOfPoints = 15; // Para telas entre 500 e 600, exibe 12 pontos
                     } else if (screenWidth > 400) {
                      numberOfPoints = 10; // Para telas entre 400 e 500, exibe 10 pontos
                     } else if (screenWidth > 300) {
                      numberOfPoints = 5;  // Para telas entre 300 e 400, exibe 6 pontos
                     } else {
                      numberOfPoints = 4;  // Para telas menores que 300, exibe 3 pontos
                     }

                     return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(numberOfPoints, (index) {
                        double height;

                        // Define a altura de acordo com a posição do container
                        if (index == 0) {
                          height = 5; // O primeiro tem altura 8
                        } else {
                          height = 13; // Os outros têm altura 13
                        }

                        return Column(
                          children: [
                            buildSquare(4, height), // Cria o container
                            SizedBox(height: 7), // Adiciona o espaçamento
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
                        "lib/images/globo.png", // Caminho do arquivo GIF no diretório assets
                        height: 50, // Altura desejada
                        width: 50, // Largura desejada
                      ),
                    )


              ],
              ),
            ),
            SizedBox(height: 50),

            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(bottom: 10), // Margem inferior de 10px
              child: ElevatedButton(
                onPressed: (){
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
                  shadowColor: Colors.black, // Cor da sombra
                  elevation: 5, // Elevação para a sombra
                  minimumSize: const Size(300, 50),
                ),
                child: const Text(
                  "Continuar",
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
