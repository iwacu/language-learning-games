class Categories {
  final int? id;
  final int catUserid;
  final int catOpened;
  final String catName;
  final String catProfImg;
  final String catBadge;
  final String catPercentage;
  final String catColor;
  final String route;
  final int catScore;
  Categories({
    this.id,
    required this.catUserid,
    required this.catOpened,
    required this.catName,
    required this.catProfImg,
    required this.catBadge,
    required this.catPercentage,
    required this.catColor,
    required this.route,
    required this.catScore,
  });

  factory Categories.fromMap(Map<String, dynamic> json) => new Categories(
      id: json['id'],
      catUserid: json['cat_userId'],
      catOpened: json['cat_opened'],
      catName: json['cat_name'],
      catProfImg: json['cat_prof_img'],
      catBadge: json['cat_badge'],
      catPercentage: json['cat_percentage'],
      catColor: json['cat_color'],
      route: json['route'],
      catScore: json['cat_score']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cat_userId': catUserid,
      'cat_opened': catOpened,
      'cat_name': catName,
      'cat_prof_img': catProfImg,
      'cat_badge': catBadge,
      'cat_percentage': catPercentage,
      'cat_color': catColor,
      'route': route,
      'cat_score': catScore
    };
  }
}
