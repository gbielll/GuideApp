class UnbordingContent {

  late String image;
  late String title;
  late String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});

}

List<UnbordingContent> contents = [

  UnbordingContent(
      image: 'images/artzag.png',
      title: 'Cultural',
      discription: "O Tupã trabalha para combater o descaso com a cultura amazonense já que, embora a Amazônia seja  reconhecida internacionalmente por sua biodiversidade exuberante, ainda é negligenciada e subestimada."
  ),

  UnbordingContent(
      image: 'images/artzagtwo.png',
      title: 'Cultura Entrelaçada',
      discription: "A parceria de Zag com o projeto Tupã destaca a riqueza cultural do Amazonas, unindo tradições indígenas e elementos contemporâneos. Sua arte não apenas celebra a diversidade da região, mas também levanta questões importantes sobre as comunidades locais."
  ),

  UnbordingContent(
      image: 'images/artzagthree.png',
      title: 'Tupã Cult',
      discription: "Nosso aplicativo convida você a mergulhar na cultura, história e ecossistema amazônicos através de quizzes interativos. Descubra as artes culturais e os desafios da região enquanto aprende de forma dinâmica. Junte-se a nós nessa jornada educativa pela Amazônia."
  ),



];