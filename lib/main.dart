import 'package:flutter/material.dart';
import 'Splash/Splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Garante que os Widgets Flutter estejam inicializados
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); //iniciar firebase

  // Uma vez que o Firebase foi inicializado, execute o runApp() com o MaterialApp
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Splashscreen(),
  ));
}
