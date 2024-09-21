import 'package:flutter/material.dart';
import 'package:guide/Options/Cities.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  int _selectedButtonIndex = -1; // Variável para rastrear qual botão está selecionado

  // Função para definir o índice do botão clicado e mostrar uma mensagem
  void _onButtonPressed(int index, String buttonText) {
    setState(() {
      _selectedButtonIndex = index;
    });

    // Exibe uma SnackBar ao selecionar o botão
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Você selecionou o botão "$buttonText"'),
        duration: const Duration(seconds: 2), // Duração da SnackBar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSizetwo = screenWidth * 0.09;

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
                "Select your language.",
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
                  _buildButton(0, "English"),
                  const SizedBox(height: 20),
                  _buildButton(1, "Portuguese"),
                  const SizedBox(height: 20),
                  _buildButton(2, "Spanish"),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _selectedButtonIndex != -1 // Só permite o clique se um botão estiver selecionado
                      ? () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const Cities()),
                    );
                  }
                      : null, // Desabilita o botão se nenhum botão for selecionado
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButtonIndex != -1
                        ? const Color(0xFF1E1E1E) // Cor preta quando habilitado
                        : Colors.grey, // Cor cinza quando desabilitado
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                    minimumSize: const Size(300, 50),
                  ),
                  child: const Text(
                    "Continuar",
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
            borderRadius: BorderRadius.circular(5),
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
