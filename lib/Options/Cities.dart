import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guide/Options/OptionsLanguages.dart';
import 'package:guide/Splash/NavigationOne.dart';

class Cities extends StatefulWidget {
  const Cities({super.key});

  @override
  State<Cities> createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
  int _selectedButtonIndex = -1; // Variável para rastrear qual botão está selecionado
  final SelectedLanguageReceiver _languageReceiver = SelectedLanguageReceiver(); // Instância da classe
  String op_City = "Available cities"; // Texto inicial
  String info_btn = "Selected option"; // Texto inicial

  @override
  void initState() {
    super.initState();
    // Atualiza os textos com base no idioma selecionado
    _languageReceiver.idiom();
    _updateTexts();
  }

  // Função para atualizar os textos
  void _updateTexts() {
    setState(() {
      op_City = _languageReceiver.getOp_City(); // Atualiza o texto da cidade
      info_btn = _languageReceiver.getInfo_btn(); // Atualiza o texto da opção selecionada
    });
  }

  // Função para definir o índice do botão clicado e mostrar uma mensagem
  void _onButtonPressed(int index, String buttonText) {
    setState(() {
      _selectedButtonIndex = index;
    });

    // Exibe uma SnackBar ao selecionar o botão
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(info_btn),
        duration: const Duration(seconds: 2), // Duração da SnackBar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSizetwo = screenWidth * 0.1;

    return Scaffold(
      body: Container(
        color: Colors.white, // Define o fundo como branco
        child: Padding(
          padding: const EdgeInsets.only(top: 55, bottom: 45, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'lib/images/logooriginal.png',
                  width: 80,
                ),
              ),
              Text(
                op_City,
                style: TextStyle(
                  color: const Color(0xFF171717),
                  fontSize: fontSizetwo,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildButton(0, "Manaus"),
                  const SizedBox(height: 20),
                  _buildButton(1, "Manacapuru"),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _selectedButtonIndex != -1 // Só permite o clique se uma cidade estiver selecionada
                      ? () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const Navigationone()),
                    );
                  }
                      : null, // Desabilita o botão se nenhuma cidade for selecionada
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButtonIndex != -1
                        ? const Color(0xFF1E1E1E) // Cor preta quando habilitado
                        : Colors.grey, // Cor cinza quando desabilitado
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 0,
                    minimumSize: const Size(300, 50),
                  ),
                  child: Text(
                    info_btn,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Função para construir um botão com o índice correspondente
  Widget _buildButton(int index, String text) {
    bool isSelected = _selectedButtonIndex == index;

    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          _onButtonPressed(index, text); // Marca o botão como selecionado e mostra a mensagem
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? const Color(0xFFFFEA29) : Colors.transparent, // Muda a cor do fundo
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color(0xFFFFEA29), width: 2),
          ),
          elevation: 0,
          minimumSize: const Size(300, 50),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: isSelected ? const Color(0xFF171717) : const Color(0xFF171717), // Muda a cor do texto
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
