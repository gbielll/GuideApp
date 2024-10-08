import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guide/Options/OptionsLanguages.dart';
import 'package:guide/Splash/NavigationThree.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true; // Para controlar a visibilidade da senha
  late SelectedLanguageReceiver _languageReceiver; // Alterado para 'late' para inicialização posterior.

  @override
  void initState() {
    super.initState();
    _languageReceiver = SelectedLanguageReceiver(); // Inicializa aqui.
    _languageReceiver.idiom(); // Configura o idioma.
    _updateTexts(); // Atualiza os textos após a configuração do idioma.
  }

  // Variáveis para os textos
  String weAreHappy = "We are";
  String happy = "happy";
  String toHaveYou = "to\n have you\n";
  String back = "back";
  String informYourEmail = "Enter your email";
  String password = "Password";
  String forgotPassword = "Forgot password";
  String btn_back = "Back";
  String enter = "Enter";


  // Função para atualizar os textos
  void _updateTexts() {
    setState(() {
      weAreHappy = _languageReceiver.getWeAreHappy();
      happy  = _languageReceiver.getHappy();
      toHaveYou = _languageReceiver.getToHaveYou();
      back = _languageReceiver.getBack();
      informYourEmail = _languageReceiver.getInformYourEmail();
      password = _languageReceiver.getPassword();
      forgotPassword = _languageReceiver.getForgotPassword();
      btn_back = _languageReceiver.getBtnBack();
      enter = _languageReceiver.getEnter();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
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
              // Cabeçalho com logo
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
              const SizedBox(height: 80),
              // Container principal do formulário
              Expanded(
                child: Container(
                  width: screenWidth,
                  padding: const EdgeInsets.only(right: 30, left: 30, top: 40, bottom: 5),
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
                        // Texto de boas-vindas
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
                              children:[
                                TextSpan(text: weAreHappy),
                                TextSpan(
                                  text: happy,
                                  style: TextStyle(
                                    color: Color(0xFFFFEA29),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(text: toHaveYou),
                                TextSpan(
                                  text: back,
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
                        const SizedBox(height: 40), // Espaço entre o texto e os campos de entrada
                        Column(
                          children: [
                            // Campo de E-mail ou nome de usuário
                            TextField(
                              decoration: InputDecoration(
                                labelText: informYourEmail,
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
                            // Campo de senha
                            TextField(
                              obscureText: _obscureText, // Usar o estado para controlar a visibilidade
                              decoration: InputDecoration(
                                labelText: password,
                                labelStyle: TextStyle(color: Colors.grey),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText ? Icons.visibility : Icons.visibility_off, // Ícone que muda conforme a visibilidade
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText; // Alternar o estado
                                    });
                                  },
                                ),
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
                                onPressed: () {}, // Ação para o botão "Esqueci senha"
                                child:  Text(forgotPassword, style: TextStyle(color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40), // Espaço antes dos botões
                        Container(
                          width: screenWidth,
                          child: Column(
                            children: [
                              // Botão "Entrar"
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
                                  child:  Text(
                                    enter,
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
                              // Botão "Voltar"
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
                                  child:  Text(
                                    btn_back,
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
