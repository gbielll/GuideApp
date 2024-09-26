import 'package:flutter/material.dart';
import 'package:guide/Options/Cities.dart' as cities;
import 'package:guide/Options/OptionsLanguages.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  int _selectedButtonIndex = -1;
  // Passando um parâmetro obrigatório na instância
  final SelectedLanguageReceiver _languageReceiver = SelectedLanguageReceiver();

  String onepage_select_language = "Select your language.";
  String op_english = "English";
  String op_portuguese = "Portuguese";
  String op_spanish = "Spanish";
  String bt_continue = "Continue";
  String info_btn = "Selected option";

  @override
  void initState() {
    super.initState();
    _languageReceiver.receiveSelectedLanguageId(0);  // Inicializa com inglês
    _updateTexts();
  }

  void _updateTexts() {
    setState(() {
      onepage_select_language = _languageReceiver.getOnepageSelectLanguage();
      op_english = _languageReceiver.getOpEnglish();
      op_portuguese = _languageReceiver.getOpPortuguese();
      op_spanish = _languageReceiver.getOpSpanish();
      bt_continue = _languageReceiver.getBtContinue();
      info_btn = _languageReceiver.getInfo_btn();
    });
  }

  void _onButtonPressed(int index, String buttonText) {
    setState(() {
      _selectedButtonIndex = index;
      _languageReceiver.receiveSelectedLanguageId(index);
      _updateTexts();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(info_btn),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSizetwo = screenWidth * 0.09;

    return Scaffold(
      body: Container(
        color: Colors.white,
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
                onepage_select_language,
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
                  _buildButton(0, op_english),
                  const SizedBox(height: 20),
                  _buildButton(1, op_portuguese),
                  const SizedBox(height: 20),
                  _buildButton(2, op_spanish),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _selectedButtonIndex != -1
                      ? () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const cities.Cities()),
                    );
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedButtonIndex != -1
                        ? const Color(0xFF1E1E1E)
                        : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                    minimumSize: const Size(300, 50),
                  ),
                  child: Text(
                    bt_continue,
                    style: const TextStyle(
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

  Widget _buildButton(int index, String text) {
    bool isSelected = _selectedButtonIndex == index;

    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          _onButtonPressed(index, text);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? const Color(0xFFFFEA29) : Colors.transparent,
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
            color: const Color(0xFF171717),
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
