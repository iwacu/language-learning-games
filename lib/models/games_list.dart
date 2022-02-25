class GamesList {
  final int? id;
  final String gameName;
  final String imagePath;
  final String route;
  final String color;
  final int rqdWords;

  GamesList(
      {this.id,
      required this.gameName,
      required this.imagePath,
      required this.route,
      required this.color,
      required this.rqdWords});

  factory GamesList.fromMap(Map<String, dynamic> json) => new GamesList(
      id: json['id'],
      gameName: json['name'],
      imagePath: json['image_path'],
      route: json['route'],
      color: json['color'],
      rqdWords: json['req_words']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': gameName,
      'image_path': imagePath,
      'route': route,
      'color': color,
      'req_words': rqdWords
    };
  }
}

class GamesMode {
  final int? id;
  final String gameName;
  final String imagePath;

  GamesMode({this.id, required this.gameName, required this.imagePath});

  factory GamesMode.fromMap(Map<String, dynamic> json) => new GamesMode(
      id: json['id'], gameName: json['name'], imagePath: json['image_path']);

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': gameName, 'image_path': imagePath};
  }
}
