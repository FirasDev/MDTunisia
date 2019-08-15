class ChatModel{
  final String message;
  final String time;
  final String id;

  ChatModel({this.message,this.time,this.id});

}

List<ChatModel> dummyChats = [
  new ChatModel(
    message:  "Où puis-je trouver des médecins ?", 
    time: "15:30",
    id: "user"
  ),
  new ChatModel(
    message:  "Vous pouvez trouver des médecins dans l'onglet de recherche de cette application.", 
    time: "15:30",
    id: "bot"
  ),
  new ChatModel(
    message:  "De plus, vous pouvez voir l'onglet principal pour les médecins les mieux notés, où vous pouvez trouver plus d'informations sur leur localisation.", 
    time: "15:30",
    id: "bot"
  )
];