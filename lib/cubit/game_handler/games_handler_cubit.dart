import 'package:bloc/bloc.dart';
import 'package:language_learning_game/constants/data_text.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/games_list.dart';
import 'package:language_learning_game/models/words_list.dart';
import 'package:language_learning_game/services/database/database_helper.dart';

part 'games_handler_state.dart';

class GamesHandlerCubit extends Cubit<GamesHandlerState> {
  GamesHandlerCubit()
      : super(GamesHandlerState(
            categories: [],
            gamesList: [],
            gamesModeList: [],
            gameWidgets: [],
            selectedCategories: [],
            selectedGamesList: [],
            selectedGameWidgets: [],
            selectedWidgetIndex: 0,
            words: [],
            selectedWord1: [],
            selectedWord4: [],
            selectedWord8: [],
            selectedWord9: [],
            gamesPlayed:[],
            selectedWord16: [],
            selectedWordsWidget: [],
            selectedIndex1: 0,
            selectedIndex4: 0,
            selectedIndex8: 0,
            selectedIndex9: 0,
            selectedIndex16: 0,
            selectedGamesModeList: []));

  // get initial data
  void getInitialData() async {
    var categories = await DatabaseHelper.instance.getCategories();
    var games = await DatabaseHelper.instance.getGames();
    var words = await DatabaseHelper.instance.getWords();
    var gameMode = await DatabaseHelper.instance.getGamesMode();
    emit(GamesHandlerState(
        gamesList: games.object!,
        selectedGamesList: [],
        categories: categories.object!,
        selectedCategories: [categories.object![0]],
        gamesModeList: gameMode.object!,
        selectedGamesModeList: [gameMode.object![0]],
        gameWidgets: DataText.gamesWidgets,
        words: words.object!,
        gamesPlayed:state.gamesPlayed,
        selectedWord1:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedWord4:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedWord8:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedWord9:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedWord16:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedGameWidgets: [],
        selectedWordsWidget: state.selectedWordsWidget,
        selectedIndex1: state.selectedIndex1,
        selectedIndex4: state.selectedIndex4,
        selectedIndex8: state.selectedIndex8,
        selectedIndex9: state.selectedIndex9,
        selectedIndex16: state.selectedIndex16,
        selectedWidgetIndex: 0));
  }

  // select game mode
  void selectGameMode({GamesMode? gamesMode}) {
    state.selectedGamesList = [];
    state.selectedGameWidgets = [];
    state.selectedGamesModeList = [];
    state.selectedGamesModeList.add(gamesMode!);
    emit(GamesHandlerState(
        gamesList: state.gamesList,
        selectedGamesList: state.selectedGamesList,
        categories: state.categories,
        selectedCategories: state.selectedCategories,
        gamesModeList: state.gamesModeList,
        selectedGamesModeList: state.selectedGamesModeList,
        gameWidgets: state.gameWidgets,
        selectedGameWidgets: state.selectedGameWidgets,
        words: state.words,
        gamesPlayed:state.gamesPlayed,
        selectedWord1: state.selectedWord1,
        selectedWord4: state.selectedWord4,
        selectedWord8: state.selectedWord8,
        selectedWord9: state.selectedWord9,
        selectedWord16: state.selectedWord16,
        selectedWordsWidget: state.selectedWordsWidget,
        selectedIndex1: state.selectedIndex1,
        selectedIndex4: state.selectedIndex4,
        selectedIndex8: state.selectedIndex8,
        selectedIndex9: state.selectedIndex9,
        selectedIndex16: state.selectedIndex16,
        selectedWidgetIndex: state.selectedWidgetIndex));
  }

  // select games
  void selectGame({GamesMode? gamesMode, GamesList? gamesList}) {
    // game_mode 1
    if (gamesMode!.id == 1) {
      state.selectedGamesList = [];
      state.selectedGameWidgets = [];
      state.selectedGamesList.add(gamesList!);
      state.selectedGameWidgets.add(
          state.gameWidgets.where((item) => item['id'] == gamesList.id).single);
      emit(GamesHandlerState(
          gamesList: state.gamesList,
          selectedGamesList: state.selectedGamesList,
          categories: state.categories,
          selectedCategories: state.selectedCategories,
          gamesModeList: state.gamesModeList,
          selectedGamesModeList: state.selectedGamesModeList,
          gameWidgets: state.gameWidgets,
          selectedGameWidgets: state.selectedGameWidgets,
          words: state.words,
          gamesPlayed:state.gamesPlayed,
          selectedWord1: state.selectedWord1,
          selectedWord4: state.selectedWord4,
          selectedWord8: state.selectedWord8,
          selectedWord9: state.selectedWord9,
          selectedWord16: state.selectedWord16,
          selectedWordsWidget: state.selectedWordsWidget,
          selectedIndex1: state.selectedIndex1,
          selectedIndex4: state.selectedIndex4,
          selectedIndex8: state.selectedIndex8,
          selectedIndex9: state.selectedIndex9,
          selectedIndex16: state.selectedIndex16,
          selectedWidgetIndex: state.selectedWidgetIndex));
    }
    // game_mode 2 (select multiple)
    else if (gamesMode.id == 2) {
      if (state.selectedGamesList.contains(gamesList)) {
        state.selectedGamesList.remove(gamesList);
        state.selectedGameWidgets.remove(state.gameWidgets
            .where((item) => item['id'] == gamesList!.id)
            .single);
        emit(GamesHandlerState(
            gamesList: state.gamesList,
            selectedGamesList: state.selectedGamesList,
            categories: state.categories,
            selectedCategories: state.selectedCategories,
            gamesModeList: state.gamesModeList,
            selectedGamesModeList: state.selectedGamesModeList,
            gameWidgets: state.gameWidgets,
            selectedGameWidgets: state.selectedGameWidgets,
            words: state.words,
            gamesPlayed:state.gamesPlayed,
            selectedWord1: state.selectedWord1,
            selectedWord4: state.selectedWord4,
            selectedWord8: state.selectedWord8,
            selectedWord9: state.selectedWord9,
            selectedWord16: state.selectedWord16,
            selectedWordsWidget: state.selectedWordsWidget,
            selectedIndex1: state.selectedIndex1,
            selectedIndex4: state.selectedIndex4,
            selectedIndex8: state.selectedIndex8,
            selectedIndex9: state.selectedIndex9,
            selectedIndex16: state.selectedIndex16,
            selectedWidgetIndex: state.selectedWidgetIndex));
      } else {
        state.selectedGamesList.add(gamesList!);
        state.selectedGameWidgets.add(state.gameWidgets
            .where((item) => item['id'] == gamesList.id)
            .single);
        emit(GamesHandlerState(
            gamesList: state.gamesList,
            selectedGamesList: state.selectedGamesList,
            categories: state.categories,
            selectedCategories: state.selectedCategories,
            gamesModeList: state.gamesModeList,
            selectedGamesModeList: state.selectedGamesModeList,
            gameWidgets: state.gameWidgets,
            selectedGameWidgets: state.selectedGameWidgets,
            words: state.words,
            gamesPlayed:state.gamesPlayed,
            selectedWord1: state.selectedWord1,
            selectedWord4: state.selectedWord4,
            selectedWord8: state.selectedWord8,
            selectedWord9: state.selectedWord9,
            selectedWord16: state.selectedWord16,
            selectedWordsWidget: state.selectedWordsWidget,
            selectedIndex1: state.selectedIndex1,
            selectedIndex4: state.selectedIndex4,
            selectedIndex8: state.selectedIndex8,
            selectedIndex9: state.selectedIndex9,
            selectedIndex16: state.selectedIndex16,
            selectedWidgetIndex: state.selectedWidgetIndex));
      }
    } // game_mode 3 (Random select multiple)
    else if (gamesMode.id == 3) {
      state.gamesList.shuffle();
      state.selectedGamesList = [];
      state.selectedGameWidgets = [];
      var shuffledList = state.gamesList.getRange(0, 3).toList();
      state.selectedGamesList = shuffledList;
      state.selectedGamesList.forEach((item) => state.selectedGameWidgets.add(
          state.gameWidgets
              .where((element) => element['id'] == item.id)
              .single));
      emit(GamesHandlerState(
          gamesList: state.gamesList,
          selectedGamesList: state.selectedGamesList,
          categories: state.categories,
          selectedCategories: state.selectedCategories,
          gamesModeList: state.gamesModeList,
          selectedGamesModeList: state.selectedGamesModeList,
          gameWidgets: state.gameWidgets,
          selectedGameWidgets: state.selectedGameWidgets,
          words: state.words,
          selectedWord1: state.selectedWord1,
          selectedWord4: state.selectedWord4,
          selectedWord8: state.selectedWord8,
          selectedWord9: state.selectedWord9,
          gamesPlayed:state.gamesPlayed,
          selectedWord16: state.selectedWord16,
          selectedWordsWidget: state.selectedWordsWidget,
          selectedIndex1: state.selectedIndex1,
          selectedIndex4: state.selectedIndex4,
          selectedIndex8: state.selectedIndex8,
          selectedIndex9: state.selectedIndex9,
          selectedIndex16: state.selectedIndex16,
          selectedWidgetIndex: state.selectedWidgetIndex));
    }
  }

  // select category
  void selectCategory({Categories? category}) {
    state.selectedCategories = [];
    state.selectedCategories.add(category!);
    state.selectedWord1 =
        state.words.where((item) => item.categoryId == category.id).toList();
    state.selectedWord4 =
        state.words.where((item) => item.categoryId == category.id).toList();
    state.selectedWord8 =
        state.words.where((item) => item.categoryId == category.id).toList();
    state.selectedWord9 =
        state.words.where((item) => item.categoryId == category.id).toList();
    state.selectedWord16 =
        state.words.where((item) => item.categoryId == category.id).toList();
    emit(GamesHandlerState(
        gamesList: state.gamesList,
        selectedGamesList: state.selectedGamesList,
        categories: state.categories,
        gamesPlayed:state.gamesPlayed,
        selectedCategories: state.selectedCategories,
        gamesModeList: state.gamesModeList,
        selectedGamesModeList: state.selectedGamesModeList,
        gameWidgets: state.gameWidgets,
        selectedGameWidgets: state.selectedGameWidgets,
        words: state.words,
        selectedWord1: state.selectedWord1,
        selectedWord4: state.selectedWord4,
        selectedWord8: state.selectedWord8,
        selectedWord9: state.selectedWord9,
        selectedWord16: state.selectedWord16,
        selectedWordsWidget: state.selectedWordsWidget,
        selectedIndex1: state.selectedIndex1,
        selectedIndex4: state.selectedIndex4,
        selectedIndex8: state.selectedIndex8,
        selectedIndex9: state.selectedIndex9,
        selectedIndex16: state.selectedIndex16,
        selectedWidgetIndex: state.selectedWidgetIndex));
  }

  // update score
  void updateScore({WordsList? wordsList, Categories? categories}) async {
    await DatabaseHelper.instance.updateCategoryScore(categories!);
    await DatabaseHelper.instance.updateScore(wordsList!);
    state.gamesPlayed.add(wordsList);
    // var words = await DatabaseHelper.instance.getWords();
    // emit(GamesHandlerState(
    //     gamesList: state.gamesList,
    //     selectedGamesList: state.selectedGamesList,
    //     categories: state.categories,
    //     selectedCategories: state.selectedCategories,
    //     gamesModeList: state.gamesModeList,
    //     selectedGamesModeList: state.selectedGamesModeList,
    //     gameWidgets: state.gameWidgets,
    //     selectedGameWidgets: state.selectedGameWidgets,
    //     words: words.object!,
    //     selectedWords: state.selectedWords,
    //     selectedWidgetIndex: state.selectedWidgetIndex));
  }

  // increase index_page widget
  void increasePageIndex({int? index}) async {
    var words = await DatabaseHelper.instance.getWords();
    state.words = [];
    state.selectedWord1 = [];
    state.selectedWord4 = [];
    state.selectedWord8 = [];
    state.selectedWord9 = [];
    state.selectedWord16 = [];
    state.words = words.object!;
    state.selectedWord1 = words.object!
        .where((item) => item.categoryId == state.selectedCategories[0].id)
        .toList();
    state.selectedWord4 = words.object!
        .where((item) => item.categoryId == state.selectedCategories[0].id)
        .toList();
    state.selectedWord8 = words.object!
        .where((item) => item.categoryId == state.selectedCategories[0].id)
        .toList();
    state.selectedWord9 = words.object!
        .where((item) => item.categoryId == state.selectedCategories[0].id)
        .toList();
    state.selectedWord16 = words.object!
        .where((item) => item.categoryId == state.selectedCategories[0].id)
        .toList();

    emit(GamesHandlerState(
        gamesList: state.gamesList,
        selectedGamesList: state.selectedGamesList,
        categories: state.categories,
        selectedCategories: state.selectedCategories,
        gamesModeList: state.gamesModeList,
        selectedGamesModeList: state.selectedGamesModeList,
        gameWidgets: state.gameWidgets,
        selectedGameWidgets: state.selectedGameWidgets,
        words: state.words,
        gamesPlayed:state.gamesPlayed,
        selectedWord1: state.selectedWord1,
        selectedWord4: state.selectedWord4,
        selectedWord8: state.selectedWord8,
        selectedWord9: state.selectedWord9,
        selectedWord16: state.selectedWord16,
        selectedWordsWidget: state.selectedWordsWidget,
        selectedIndex1: 0,
        selectedIndex4: 0,
        selectedIndex8: 0,
        selectedIndex9: 0,
        selectedIndex16: 0,
        selectedWidgetIndex: state.selectedWidgetIndex + 1));
  }

  // reset_selection
  void resetSelection() async {
    var categories = await DatabaseHelper.instance.getCategories();
    var games = await DatabaseHelper.instance.getGames();
    var words = await DatabaseHelper.instance.getWords();
    var gameMode = await DatabaseHelper.instance.getGamesMode();
    state.selectedWord1 = [];
    state.selectedWord4 = [];
    state.selectedWord8 = [];
    state.selectedWord9 = [];
    state.selectedWord16 = [];
    emit(GamesHandlerState(
        gamesList: games.object!,
        gamesPlayed:state.gamesPlayed,
        selectedGamesList: [],
        categories: categories.object!,
        selectedCategories: [categories.object![0]],
        gamesModeList: gameMode.object!,
        selectedGamesModeList: [gameMode.object![0]],
        gameWidgets: DataText.gamesWidgets,
        words: words.object!,
        selectedWord1:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedWord4:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedWord8:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedWord9:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedWord16:
            words.object!.where((item) => item.categoryId == 1).toList(),
        selectedGameWidgets: [],
        selectedWordsWidget: [],
        selectedIndex1: 0,
        selectedIndex4: 0,
        selectedIndex8: 0,
        selectedIndex9: 0,
        selectedIndex16: 0,
        selectedWidgetIndex: 0));
  }

  // game words index selected
  void wordManupilation({WordsList? wordsList, bool? done, int? indexType}) {
    if (done!) {
      emit(GamesHandlerState(
          gamesList: state.gamesList,
          selectedGamesList: state.selectedGamesList,
          categories: state.categories,
          selectedCategories: state.selectedCategories,
          gamesModeList: state.gamesModeList,
          selectedGamesModeList: state.selectedGamesModeList,
          gameWidgets: state.gameWidgets,
          selectedGameWidgets: state.selectedGameWidgets,
          words: state.words,
          selectedWord1: state.selectedWord1,
          gamesPlayed:state.gamesPlayed,
          selectedWord4: state.selectedWord4,
          selectedWord8: state.selectedWord8,
          selectedWord9: state.selectedWord9,
          selectedWord16: state.selectedWord16,
          selectedWordsWidget: [],
          selectedIndex1: 0,
          selectedIndex4: 0,
          selectedIndex8: 0,
          selectedIndex9: 0,
          selectedIndex16: 0,
          selectedWidgetIndex: state.selectedWidgetIndex));
    } else {
      switch (indexType) {
        case 1:
          state.selectedWordsWidget.add(wordsList!);
          emit(GamesHandlerState(
              gamesList: state.gamesList,
              selectedGamesList: state.selectedGamesList,
              categories: state.categories,
              selectedCategories: state.selectedCategories,
              gamesModeList: state.gamesModeList,
              selectedGamesModeList: state.selectedGamesModeList,
              gameWidgets: state.gameWidgets,
              gamesPlayed:state.gamesPlayed,
              selectedGameWidgets: state.selectedGameWidgets,
              words: state.words,
              selectedWord1: state.selectedWord1,
              selectedWord4: state.selectedWord4,
              selectedWord8: state.selectedWord8,
              selectedWord9: state.selectedWord9,
              selectedWord16: state.selectedWord16,
              selectedWordsWidget: state.selectedWordsWidget,
              selectedIndex1: state.selectedIndex1 + 1,
              selectedIndex4: 0,
              selectedIndex8: 0,
              selectedIndex9: 0,
              selectedIndex16: 0,
              selectedWidgetIndex: state.selectedWidgetIndex));
          break;
        case 4:
          state.selectedWordsWidget.add(wordsList!);
          emit(GamesHandlerState(
              gamesList: state.gamesList,
              selectedGamesList: state.selectedGamesList,
              categories: state.categories,
              selectedCategories: state.selectedCategories,
              gamesModeList: state.gamesModeList,
              selectedGamesModeList: state.selectedGamesModeList,
              gameWidgets: state.gameWidgets,
              selectedGameWidgets: state.selectedGameWidgets,
              words: state.words,
              selectedWord1: state.selectedWord1,
              selectedWord4: state.selectedWord4,
              gamesPlayed:state.gamesPlayed,
              selectedWord8: state.selectedWord8,
              selectedWord9: state.selectedWord9,
              selectedWord16: state.selectedWord16,
              selectedWordsWidget: state.selectedWordsWidget,
              selectedIndex1: 0,
              selectedIndex4: state.selectedIndex4 + 1,
              selectedIndex8: 0,
              selectedIndex9: 0,
              selectedIndex16: 0,
              selectedWidgetIndex: state.selectedWidgetIndex));
          break;
        case 8:
          state.selectedWordsWidget.add(wordsList!);
          emit(GamesHandlerState(
              gamesList: state.gamesList,
              selectedGamesList: state.selectedGamesList,
              categories: state.categories,
              selectedCategories: state.selectedCategories,
              gamesModeList: state.gamesModeList,
              selectedGamesModeList: state.selectedGamesModeList,
              gameWidgets: state.gameWidgets,
              selectedGameWidgets: state.selectedGameWidgets,
              words: state.words,
              selectedWord1: state.selectedWord1,
              gamesPlayed:state.gamesPlayed,
              selectedWord4: state.selectedWord4,
              selectedWord8: state.selectedWord8,
              selectedWord9: state.selectedWord9,
              selectedWord16: state.selectedWord16,
              selectedWordsWidget: state.selectedWordsWidget,
              selectedIndex1: 0,
              selectedIndex4: 0,
              selectedIndex8: state.selectedIndex8 + 1,
              selectedIndex9: 0,
              selectedIndex16: 0,
              selectedWidgetIndex: state.selectedWidgetIndex));
          break;
        case 9:
          state.selectedWordsWidget.add(wordsList!);
          emit(GamesHandlerState(
              gamesList: state.gamesList,
              selectedGamesList: state.selectedGamesList,
              categories: state.categories,
              selectedCategories: state.selectedCategories,
              gamesModeList: state.gamesModeList,
              selectedGamesModeList: state.selectedGamesModeList,
              gameWidgets: state.gameWidgets,
              selectedGameWidgets: state.selectedGameWidgets,
              words: state.words,
              gamesPlayed:state.gamesPlayed,
              selectedWord1: state.selectedWord1,
              selectedWord4: state.selectedWord4,
              selectedWord8: state.selectedWord8,
              selectedWord9: state.selectedWord9,
              selectedWord16: state.selectedWord16,
              selectedWordsWidget: state.selectedWordsWidget,
              selectedIndex1: 0,
              selectedIndex4: 0,
              selectedIndex8: 0,
              selectedIndex9: state.selectedIndex9 + 1,
              selectedIndex16: 0,
              selectedWidgetIndex: state.selectedWidgetIndex));
          break;
        case 16:
          state.selectedWordsWidget.add(wordsList!);
          emit(GamesHandlerState(
              gamesList: state.gamesList,
              selectedGamesList: state.selectedGamesList,
              categories: state.categories,
              selectedCategories: state.selectedCategories,
              gamesModeList: state.gamesModeList,
              selectedGamesModeList: state.selectedGamesModeList,
              gameWidgets: state.gameWidgets,
              selectedGameWidgets: state.selectedGameWidgets,
              words: state.words,
              gamesPlayed:state.gamesPlayed,
              selectedWord1: state.selectedWord1,
              selectedWord4: state.selectedWord4,
              selectedWord8: state.selectedWord8,
              selectedWord9: state.selectedWord9,
              selectedWord16: state.selectedWord16,
              selectedWordsWidget: state.selectedWordsWidget,
              selectedIndex1: 0,
              selectedIndex4: 0,
              selectedIndex8: 0,
              selectedIndex9: 0,
              selectedIndex16: state.selectedIndex16 + 1,
              selectedWidgetIndex: state.selectedWidgetIndex));
          break;
        default:
      }
    }
  }
  // reset word_categories_score
  void resetWordCategoriesScore({List<WordsList>? wordsList}){
    wordsList!.forEach((item) async{
      var word = WordsList(
        id: item.id,
        wordName: item.wordName, audioPath: item.audioPath, 
      imagePath: item.imagePath, originWordName: item.originWordName, color: item.color,
       categoryId: item.categoryId, catScore: 0);
        await DatabaseHelper.instance.updateScore(word);
     });
  }
}
