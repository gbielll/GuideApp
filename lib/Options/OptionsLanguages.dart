class SelectedLanguageReceiver {
  // Variáveis de instância - tela one
  String onepage_select_language = '';
  String op_english = '';
  String op_portuguese = '';
  String op_spanish = '';
  String bt_continue = '';
  String info_btn = '';
  String inviteToGo = '';
  String packYourBag = '';
  String discoverWithGuide = '';
  String publicServices = '';
  String culturalPoints = '';
  String guideOffer = '';
  String travelWith = '';
  String tourismAtYourFingertips = '';
  String hard = '';
  String enter = '';
  String createAccount = '';
  String weAreHappy = '';
  String happy = '';
  String toHaveYou = '';
  String back = '';
  String informYourEmail = '';
  String password = '';
  String forgotPassword = '';
  String btn_back = '';


  String your = '';
  String trip = '';
  String startsHere = '';
  String enterYourEmail = '';
  String enterAPassword = '';
  String repeatYourPassword = '';


  // Variáveis de instância - tela two
  String op_City = '';
  static final SelectedLanguageReceiver _instance = SelectedLanguageReceiver
      ._internal();
  int? id;

  // Construtor privado
  SelectedLanguageReceiver._internal();

  // Método factory para retornar a mesma instância
  factory SelectedLanguageReceiver() {
    return _instance;
  }

  // Método para receber e imprimir o ID do idioma selecionado
  void receiveSelectedLanguageId(int id) {
    print('ID do idioma recebido: $id');
    this.id = id; // Atribui o valor
    idiom();
  }

  void idiom() {
    if (this.id == 0) {
      onepage_select_language = "Select your language.";
      op_english = "English";
      op_portuguese = "Portuguese";
      op_spanish = "Spanish";
      bt_continue = "Continue";
      info_btn = "Selected option";
      op_City = "Available cities";

      inviteToGo = "Go?";
      packYourBag = "Pack your bag!";
      discoverWithGuide =
      "Discover with Guide the best places and hotels to visit, as well as ";
      publicServices = "public services";
      culturalPoints = "Cultural Points";
      guideOffer = "The Guide offers the most\n visited places for you!";
      travelWith = "Travel with";

      tourismAtYourFingertips = "Have tourism\nat the palm of your\n";
      hard = "Hand.";
      enter = "Enter";
      createAccount = "Create account";

      weAreHappy = "We are";
      happy = " happy ";
      toHaveYou = "to\n have you\n";
      back = "back";
      informYourEmail = "Enter your email";
      password = "Password";
      forgotPassword = "Forgot password";
      btn_back = "Back";

      your = "Your";
      trip = " trip ";
      startsHere = "starts\nhere at ";
      enterYourEmail = "Enter your email";
      enterAPassword = "Enter a password";
      repeatYourPassword = "Repeat your password";
    } else if (this.id == 1) {
      onepage_select_language = "Selecione sua linguagem.";
      op_english = "Inglês";
      op_portuguese = "Português";
      op_spanish = "Espanhol";
      bt_continue = "Continuar";
      info_btn = "Opção selecionada";
      op_City = "Cidades disponíveis";

      inviteToGo = "Bora?";
      packYourBag = "Arrume a mala!";
      discoverWithGuide =
      "Descubra com o Guide os melhores lugares e hotéis para visitar, além de ";
      publicServices = "serviços públicos";
      culturalPoints = "Pontos Culturais";
      guideOffer = "O Guide oferece os lugares mais\n visitados para você!";
      travelWith = "Viagem com";

      tourismAtYourFingertips = "Tenha o turismo\nna palma da\n";
      hard = "Mão.";
      enter = "Entrar";
      createAccount = "Criar conta";

      weAreHappy = "Estamos";
      happy = " felizes ";
      toHaveYou = "em\nter você de\n";
      back = "volta";

      informYourEmail = "Informe seu email";
      password = "Senha";
      forgotPassword = "Esqueci senha";
      btn_back = "Voltar";

      your = "Sua";
      trip = " viagem ";
      startsHere = "começa\naqui no, ";
      enterYourEmail = "Informe seu email";
      enterAPassword = "Informe uma senha";
      repeatYourPassword = "Repita sua senha";
    } else if (this.id == 2) {
      onepage_select_language = "Selecciona tu idioma.";
      op_english = "Inglés";
      op_portuguese = "Portugués";
      op_spanish = "Español";
      bt_continue = "Continuar";
      info_btn = "Opción seleccionada";
      op_City = "Ciudades disponibles";

      inviteToGo = "¿Vamos";
      packYourBag = "¡Prepara tu maleta!";
      discoverWithGuide =
      "Descubre con Guide los mejores lugares y hoteles para visitar, además de ";
      publicServices = "servicios públicos";
      culturalPoints = "Puntos Culturales";
      guideOffer = "¡El Guide ofrece los lugares más\n visitados para ti!";
      travelWith = "Viaje con";

      tourismAtYourFingertips = "Ten el turismo\nen la palma de tu\n";
      hard = "Mano.";
      enter = "Entrar";
      createAccount = "Crear cuenta";

      weAreHappy = "Estamos";
      happy = " felices ";
      toHaveYou = "en\ntenerte de\n";
      back = "vuelta";
      informYourEmail = "Informa tu email";
      password = "Contraseña";
      forgotPassword = "Olvidé la contraseña";
      btn_back = "Volver";

      your = "Tu";
      trip = " viaje ";
      startsHere = "comienza\naquí en ";
      enterYourEmail = "Introduce tu correo electrónico";
      enterAPassword = "Introduce una contraseña";
      repeatYourPassword = "Repite tu contraseña";
    } else {
      print('ID de idioma inválido.');
    }
  }

  // Métodos get para retornar os valores
  String getOnepageSelectLanguage() {
    return onepage_select_language;
  }

  String getOpEnglish() {
    return op_english;
  }

  String getOpPortuguese() {
    return op_portuguese;
  }

  String getOpSpanish() {
    return op_spanish;
  }

  String getBtContinue() {
    return bt_continue;
  }

  String getInfo_btn() {
    return info_btn;
  }

  String getOp_City() {
    return op_City;
  }

  String getInviteToGo() {
    return inviteToGo;
  }

  String getPackYourBag() {
    return packYourBag;
  }

  String getDiscoverWithGuide() {
    return discoverWithGuide;
  }

  String getPublicServices() {
    return publicServices;
  }

  String getCulturalPoints() {
    return culturalPoints;
  }

  String getGuideOffer() {
    return guideOffer;
  }

  String getTravelWith() {
    return travelWith;
  }

  String getTourismAtYourFingertips() {
    return tourismAtYourFingertips;
  }

  String getHard() {
    return hard;
  }

  String getEnter() {
    return enter;
  }

  String getCreateAccount() {
    return createAccount;
  }

  String getWeAreHappy() {
    return weAreHappy;
  }

  String getHappy() {
    return happy;
  }

  String getToHaveYou() {
    return toHaveYou;
  }

  String getBack() {
    return back;
  }

  String getInformYourEmail() {
    return informYourEmail;
  }

  String getPassword() {
    return password;
  }

  String getForgotPassword() {
    return forgotPassword;
  }

  String getBtnBack() {
    return btn_back;
  }

  String getYour() {
    return your;
  }

  String getTrip() {
    return trip;
  }

  String getStartsHere() {
    return startsHere;
  }

  String getEnterYourEmail() {
    return enterYourEmail;
  }

  String getEnterAPassword() {
    return enterAPassword;
  }

  String getRepeatYourPassword() {
    return repeatYourPassword;
  }

}
