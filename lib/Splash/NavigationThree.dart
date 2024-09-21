import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guide/Authetication/Login.dart';

class Navigationthree extends StatefulWidget {
  const Navigationthree({super.key});

  @override
  State<Navigationthree> createState() => _NavigationthreeState();
}

class _NavigationthreeState extends State<Navigationthree> {
  @override
  Widget build(BuildContext context) {
    // Obtém as dimensões da tela
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final fontSize = screenWidth * 0.099; // Ajuste a porcentagem conforme necessário

    return Scaffold(
      backgroundColor: const Color(0xFF171717),  // Define uma cor de fundo para evitar transições abruptas
      body: Stack(
        children: [
          // Imagem de fundo
          Positioned.fill(
            child: Image.asset(
              'lib/images/fundologin.png', // Caminho da imagem
              fit: BoxFit.cover, // Cobrir toda a tela
              color: Colors.black.withOpacity(0.4), // Escurecimento
              colorBlendMode: BlendMode.darken, // Modo de mistura
            ),
          ),
          // Conteúdo da tela sobre a imagem com padding
          Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 40, left: 30, right: 30), // Adiciona padding de 20 pixels em todos os lados
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      // Imagem no canto esquerdo
                      Image.asset(
                        'lib/images/logooriginal.png', // Caminho da imagem
                        width: 80,
                      ),
                      Spacer(), // Adiciona um espaço flexível que empurra o Container para a direita
                      // Container no lado direito
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
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
                              color: Color(0xFFFFEA29), // Cor branca
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Tenha o turismo\nna palma\nda",
                          style: TextStyle(
                            color: Colors.white, // Cor para o texto normal
                            fontSize: fontSize, // Tamanho da fonte
                            fontFamily: 'Inter', // Família da fonte
                            fontWeight: FontWeight.bold, // Peso da fonte (mais grosso)
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Mão.",
                              style: TextStyle(
                                color: Colors.yellow, // Cor amarela para "Mão."
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          width: 115, // Ajuste a largura da linha conforme necessário
                          height: 7, // Espessura da linha
                          color: Colors.yellow, // Cor da linha
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.only(bottom: 10), // Margem inferior de 10px
                  child: Column(
                    children: [
                      ElevatedButton(
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
                          elevation: 0, // Remove a sombra
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
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => const Navigationthree()),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent, // Define o fundo como transparente
                          minimumSize: const Size(300, 50),
                        ),
                        child: const Text(
                          "Criar conta",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white, // Define a cor do texto como branco
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
