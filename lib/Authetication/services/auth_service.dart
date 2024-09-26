import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService{
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  entrarUsuario({required String email, required String senha}){
    print("METODO ENTRAR USUARIO");
  }

  Future <String?> cadastrarUsuario({required String email, required String name, required String password}) async{
   try {
     UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
     await userCredential.user!.updateDisplayName(name);

      print("METODO CADASTRAR USUARIO - OK");
   } on FirebaseAuthException catch (e) {
     switch(e.code){ //casos de erro que eu conheço
       case "email-already-in-use":
         return "O e-mail já está em uso.";
     }
     //casos de erro que eu não conheço
     return e.code;
   }
  }
}