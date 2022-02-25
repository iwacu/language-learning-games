import 'package:bloc/bloc.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/games_list.dart';
import 'package:language_learning_game/models/words_list.dart';
import 'package:language_learning_game/services/database/database_helper.dart';

part 'data_manipulation_state.dart';

class DataManipulationCubit extends Cubit<DataManipulationState> {
  DataManipulationCubit() : super(DataManipulationInitial());

  void getData() async {
    // var user = await DatabaseHelper.instance.getUser();

    var categories = await DatabaseHelper.instance.getCategories();
    var games = await DatabaseHelper.instance.getGames();
    var words = await DatabaseHelper.instance.getWords();
    var staticWords = await DatabaseHelper.instance.getStaticWords();
    var gameMode = await DatabaseHelper.instance.getGamesMode();
    if (categories.error) {
      emit(DataManipulationError(categories.message));
    } else {
      emit(GettingData(
          categories.object!, games.object!, words.object!, staticWords.object!,gameMode.object!));
    }
  }

  void settingCategory({Categories? category}) async {
    var sum = 0.0;
    var categories = await DatabaseHelper.instance.getCategories();
    var words = await DatabaseHelper.instance.getWords();
    var nextCat = categories.object!
        .where((item) => item.id == (category!.id! + 1))
        .single;
    var catWords =
        words.object!.where((item) => item.categoryId == category!.id).toList();
    // get words_category total score
    catWords.forEach((item) {
      sum += item.catScore;
    });
    // if category get a min score of 1800 unlock next game
    if (sum >= 1800) {
      // update category or open the next category
      await DatabaseHelper.instance.updateCategoryScore(Categories(
          id: nextCat.id,
          catUserid: nextCat.catUserid,
          catOpened: 0,
          catName: nextCat.catName,
          catProfImg: nextCat.catProfImg,
          catBadge: nextCat.catBadge,
          catPercentage: nextCat.catPercentage,
          catColor: nextCat.catColor,
          route: nextCat.route,
          catScore: nextCat.catScore));
      getData();
    } else {
      getData();
    }
  }
}
