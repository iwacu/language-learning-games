part of 'games_handler_cubit.dart';

class GamesHandlerState {
  List<GamesList> gamesList;
  List<GamesList> selectedGamesList;
  List<Categories> categories;
  List<Categories> selectedCategories;
  List<GamesMode> gamesModeList;
  List<GamesMode> selectedGamesModeList;
  List<Map<String, dynamic>> gameWidgets;
  List<Map<String, dynamic>> selectedGameWidgets;
  List<WordsList> words;
  List<WordsList> selectedWord1;
  List<WordsList> selectedWord4;
  List<WordsList> selectedWord8;
  List<WordsList> selectedWord9;
  List<WordsList> selectedWord16;
  List<WordsList> selectedWordsWidget;
  List<WordsList> gamesPlayed;
  int selectedIndex1;
  int selectedIndex4;
  int selectedIndex8;
  int selectedIndex9;
  int selectedIndex16;
  int selectedWidgetIndex;

  GamesHandlerState(
      {required this.gamesList,
      required this.selectedGamesList,
      required this.categories,
      required this.selectedCategories,
      required this.gamesModeList,
      required this.selectedGamesModeList,
      required this.gameWidgets,
      required this.selectedGameWidgets,
      required this.words,
      required this.selectedWord1,
      required this.gamesPlayed,
      required this.selectedWord4,
      required this.selectedWord8,
      required this.selectedWord9,
      required this.selectedWord16,
      required this.selectedWordsWidget,
      required this.selectedIndex1,
      required this.selectedIndex4,
      required this.selectedIndex8,
      required this.selectedIndex9,
      required this.selectedIndex16,
      required this.selectedWidgetIndex});
}
