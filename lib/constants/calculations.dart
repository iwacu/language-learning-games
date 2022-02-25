import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/words_list.dart';

double getSum({Categories? category, List<WordsList>? words}) {
  var sum = 0.0;
  var catWords =
      words!.where((item) => item.categoryId == category!.id).toList();
  // get words_category total score
  catWords.forEach((item) {
    sum += item.catScore;
  });
  return sum;
}

int getPercentage({Categories? category, List<WordsList>? words}) {
  var percentage = 0.0;
  var sum = 0.0;
  var catWords =
      words!.where((item) => item.categoryId == category!.id).toList();
  // get words_category total score
  catWords.forEach((item) {
    sum += item.catScore;
  });
  percentage = ((100 * sum) / 2000);
  return percentage.toInt();
}

int getPercentage20({Categories? category, List<WordsList>? words}) {
  var points = 0.0;
  var sum = 0.0;
  var catWords =
      words!.where((item) => item.categoryId == category!.id).toList();
  // get words_category total score
  catWords.forEach((item) {
    sum += item.catScore;
  });
  points = ((200 * sum) / 2000);
 
  return points.toInt();
}

int getPercentage200({Categories? category, List<WordsList>? words}) {
  var points = 0.0;
  var sum = 0.0;
  var catWords =
      words!.where((item) => item.categoryId == category!.id).toList();
  // get words_category total score
  catWords.forEach((item) {
    sum += item.catScore;
  });
  points = ((200 * sum) / 2000);

  return points.toInt();
}

int getPercentageW20({WordsList? words}) {
  var points = 0.0;

  points = ((10 * words!.catScore) / 100);
  
  return points.toInt();
}

double getPercentageDW20({WordsList? words}) {
  var points = 0.0;

  points = ((10 * words!.catScore) / 100);

  return points/100;
}

String getPercentageLevel({double? sum}) {
  var points = 0.0;

  points = ((100 * sum!) / 2000);

  return "${points.toInt()} %";
}

double getLevelValue({double? sum}) {
  var points = 0.0;

  points = (((100 * sum!) / 2000) / 100);

  return points;
}
