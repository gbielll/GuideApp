import 'package:flutter/material.dart';
import 'package:guide/Authetication/services/auth_service.dart';

class FormValidator {
  final authService = AuthService();

  Future<void> validateAndShowMessage(BuildContext context, {
    required String email,
    required String name,
    required String password,
    required String repeatPassword,
  }) async {
    if (email.isEmpty || name.isEmpty || password.isEmpty || repeatPassword.isEmpty) {
      _showSnackBar(context, 'Todos os campos devem ser preenchidos.');
    } else if (!email.contains('@')) {
      _showSnackBar(context, 'O email é inválido. Deve conter "@".');
    } else if (password.length < 6) {
      _showSnackBar(context, 'A senha deve ter pelo menos 6 caracteres.');
    } else if (password != repeatPassword) {
      _showSnackBar(context, 'As senhas são diferentes.');
    } else {

      String? erro = await authService.cadastrarUsuario(email: email, name: name, password: password); // Chamada para registrar o usuário

      if(erro == null){
        _showSnackBar(context, 'Validação bem-sucedida!');
      }else{
        _showSnackBar(context, erro);
      }
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
