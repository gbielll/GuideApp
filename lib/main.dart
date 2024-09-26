import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:guide/firebase_options.dart';
import 'Splash/Splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options:  DefaultFirebaseOptions.currentPlatform,
  );
//iniciar firebase

  // Uma vez que o Firebase foi inicializado, execute o runApp() com o MaterialApp
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Splashscreen(),
  ));
}
