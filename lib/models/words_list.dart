class WordsList {
  final int? id;
  final String wordName;
  final String audioPath;
  final String imagePath;
  final String originWordName;
  final String color;
  final int categoryId;
  final int catScore;

  WordsList({
    this.id,
    required this.wordName,
    required this.audioPath,
    required this.imagePath,
    required this.originWordName,
    required this.color,
    required this.categoryId,
    required this.catScore,
  });

  factory WordsList.fromMap(Map<String, dynamic> json) => new WordsList(
      id: json['id'],
      audioPath: json['audio_path'],
      categoryId: json['cat_id'],
      imagePath: json['image_path'],
      originWordName: json['origin_name'],
      color: json['cat_color'],
      wordName: json['name'],
      catScore: json['cat_score']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'audio_path': audioPath,
      'cat_id': categoryId,
      'image_path': imagePath,
      'origin_name': originWordName,
      'cat_color': color,
      'name': wordName,
      'cat_score': catScore
    };
  }
}
