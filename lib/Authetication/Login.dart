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
    // Obtém as dimensões da tela
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final fontSizetwo =
        screenWidth * 0.078; // Ajuste a porcentagem conforme necessário
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      // Cor de fundo para evitar transições abruptas
      body: Stack(
        children: [
          // Imagem de fundkok
          Positioned.fill(
            child: Image.asset(
              'lib/images/fundologin.png', // Caminho da imagem
              fit: BoxFit.cover, // Cobrir toda a tela
              color: Colors.black.withOpacity(0.5), // Escurecimento
              colorBlendMode: BlendMode.darken, // Modo de mistura
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 20, left: 20, top: 45, bottom: 20),
                // Padding ao redor do conteúdo
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  // Faz o Row ocupar o menor espaço possível
                  children: [
                    // Imagem no canto esquerdo
                    Image.asset(
                      'lib/images/logooriginal.png', // Caminho da imagem
                      width: 80,
                    ),
                    const Spacer(),
                    // Adiciona um espaço flexível que empurra o Container para a direita
                    // Container no lado direito
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 18, // Define a largura do quadrado
                          height: 12, // Define a altura do quadrado
                          color: const Color(0xFF171717), // Cor preta
                        ),
                        const SizedBox(width: 8), // Espaço entre os quadrados
                        Container(
                          width: 18, // Define a largura do quadrado
                          height: 12, // Define a altura do quadrado
                          color: const Color(0xFF171717), // Cor preta
                        ),
                        const SizedBox(width: 8), // Espaço entre os quadrados
                        Container(
                          width: 30, // Define a largura do quadrado
                          height: 12, // Define a altura do quadrado
                          color: const Color(0xFFFFEA29), // Cor amarela
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // Largura de 100%
                  height: MediaQuery.of(context).size.height * 0.4,
                  // Altura de 40%
                  padding: const EdgeInsets.all(30),
                  // Padding lateral menor
                  decoration: BoxDecoration(
                    color: Colors.white, // Cor de fundo branca
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), // Borda arredondada no canto superior esquerdo
                      topRight: Radius.circular(20), // Borda arredondada no canto superior direito
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // Mantém o texto na parte superior
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // Alinha o texto à esquerda
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: fontSizetwo,
                              // Tamanho da fonte
                              fontFamily: 'Inter',
                              // Família da fonte
                              fontWeight: FontWeight.w600,
                              // Peso da fonte (mais grosso)
                              color: Colors.black, // Cor padrão do texto
                            ),
                            children: const [
                              TextSpan(text: 'Estamos '),
                              TextSpan(
                                text: 'felizes ',
                                style: TextStyle(
                                  color: Color(0xFFFFEA29),
                                  fontWeight: FontWeight
                                      .w600, // Peso mais grosso para ênfase
                                ),
                              ),
                              TextSpan(text: 'em\nter você de\n'),
                              TextSpan(
                                text: 'volta',
                                style: TextStyle(
                                  color: Color(0xFFFFEA29),
                                  fontWeight: FontWeight
                                      .w600, // Peso mais grosso para ênfase
                                ),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight
                                      .w600, // Peso mais grosso para ênfase
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'E-mail ou nome de usuário',
                                labelStyle: TextStyle(color: Colors.grey),
                                // Cor do texto do rótulo
                                suffixIcon: const Icon(Icons.person),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width:
                                          2.0), // Cor e espessura da borda ao focar
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width:
                                          2.0), // Cor e espessura da borda normal
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Campo de texto para senha
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                labelStyle: TextStyle(color: Colors.grey),
                                // Cor do texto do rótulo
                                suffixIcon: const Icon(Icons.visibility),
                                // Apenas o ícone de visibilidade
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width:
                                          2.0), // Cor e espessura da borda ao focar
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width:
                                          2.0), // Cor e espessura da borda normal
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text('Esqueci senha', style: TextStyle(
                                  color: Colors.grey
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              // Define a largura como 100%
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Login()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFFFEA29),
                                  // Cor de fundo amarela
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 0,
                                  // Remove a sombra
                                  minimumSize: const Size(
                                      300, 50), // Define o tamanho mínimo
                                ),
                                child: const Text(
                                  "Entrar",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF171717), // Cor do texto
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              // Define a largura como 100%
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Navigationthree()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  // Torna o fundo transparente
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: const BorderSide(
                                        color: Color(0xFFFFEA29),
                                        width: 2), // Borda amarela
                                  ),
                                  elevation: 0,
                                  // Remove a sombra
                                  minimumSize: const Size(
                                      300, 50), // Define o tamanho mínimo
                                ),
                                child: const Text(
                                  "Voltar",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF171717), // Cor do texto
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
            ],
          ),
        ],
      ),
    );
  }
}
