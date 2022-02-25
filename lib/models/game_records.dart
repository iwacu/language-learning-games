class GamesRecords {
  final int? id;
  final int categoryId;
  final int wordListId;
  final double score;

  GamesRecords(
      {this.id,
      required this.wordListId,
      required this.score,
      required this.categoryId});

  factory GamesRecords.fromMap(Map<String, dynamic> json) => new GamesRecords(
      id: json['id'],
      categoryId: json['cat_id'],
      score: json['score'],
      wordListId: json['word_id']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cat_id': categoryId,
      'score': score,
      'word_id': wordListId
    };
  }
}
