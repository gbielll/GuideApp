import 'package:flutter/material.dart';
import 'package:guide/Splash/NavigationOne.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override

  void initState(){

    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const Navigationone()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF1e1e1e),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset(
              "lib/images/splash.gif", // Caminho do arquivo GIF no diretório assets
              height: 300, // Altura desejada
              width: 300, // Largura desejada
            ),
            Padding(
              padding: EdgeInsets.only(top: 50), // Espaço entre a imagem e a borda inferior da tela
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80), // Espaço entre a imagem e a borda inferior da tela
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    Text("Feito por Gabriel Mota", style: TextStyle(color: Colors.white, fontFamily: 'Inter',  fontWeight: FontWeight.w500, fontSize: 12),)
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
