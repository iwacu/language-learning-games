// import 'package:bloc/bloc.dart';
// import 'package:language_learning_game/models/categories.dart';
// import 'package:language_learning_game/models/games_list.dart';
// import 'package:language_learning_game/models/words_list.dart';
// import 'package:language_learning_game/services/database/database_helper.dart';
// import 'package:language_learning_game/widgets/game_pages/choose_image/3_home_game_choosing.dart';
// import 'package:language_learning_game/widgets/game_pages/choose_image/4_home_game_choosing_image.dart';
// import 'package:language_learning_game/widgets/game_pages/choose_image/home_choose_image.dart';
// import 'package:language_learning_game/widgets/game_pages/fliping_cards/home_fliping_card_2.dart';
// import 'package:language_learning_game/widgets/game_pages/fliping_cards/home_fliping_card_3.dart';
// import 'package:language_learning_game/widgets/game_pages/fliping_cards/home_fliping_card_4.dart';
// import 'package:language_learning_game/widgets/game_pages/match_images/home_match_image_circled.dart';
// import 'package:language_learning_game/widgets/game_pages/match_images/home_square_matching.dart';
// import 'package:language_learning_game/widgets/game_pages/true_false_game/true_false_game.dart';
// import 'package:language_learning_game/widgets/game_pages/true_false_game/true_false_practice.dart';

// part 'game_services_state.dart';

// class GameServicesCubit extends Cubit<GameServicesState> {
//   final int selectedIndex;
//   final List<WordsList> wordList;
//   GameServicesCubit(this.selectedIndex, this.wordList)
//       : super(GameServicesState(
//             gamesListSelected: [],
//             gameModesSelected: [],
//             gameWidgetSelected: [],
//             gamesList: [],
//             wordsListSelected: [],
//             gameWidgets: [],
//             gameModesList: [],
//             gameModeIndex: 0,
//             selectedWidgetIndex: selectedIndex,
//             // gameSelectedIndex: 0,
//             wordsList: wordList,
//             category: Categories(
//                 id: -1,
//                 catUserid: 0,
//                 catOpened: -1,
//                 catName: '',
//                 catProfImg: '',
//                 catBadge: '',
//                 catPercentage: '',
//                 catColor: '',
//                 route: '',
//                 catScore: 0)));

//   // get data
//   void getData() async {
//     var words = await DatabaseHelper.instance.getWords();
//     emit(GameServicesState(
//         wordsList: words.object!,
//         category: state.category,
//         wordsListSelected: state.wordsListSelected,
//         gameModeIndex: state.gameModeIndex,
//         gameWidgetSelected: state.gameWidgetSelected,
//         gameWidgets: state.gameWidgets,
//         gameModesList: state.gameModesList,
//         gameModesSelected: state.gameModesSelected,
//         gamesList: state.gamesList,
//         gamesListSelected: state.gamesListSelected,
//         selectedWidgetIndex: state.selectedWidgetIndex));
//   }

//   // set words set
//   void wordSelecting({WordsList? word}) {
//     if (state.wordsListSelected.contains(word)) {
//       state.wordsListSelected.remove(word);
//       emit(GameServicesState(
//           gamesListSelected: state.gamesListSelected,
//           gamesList: state.gamesList,
//           gameWidgets: state.gameWidgets,
//           gameWidgetSelected: state.gameWidgetSelected,
//           wordsListSelected: state.wordsListSelected,
//           gameModesSelected: state.gameModesSelected,
//           gameModesList: state.gameModesList,
//           wordsList: state.wordsList,
//           category: state.category,
//           gameModeIndex: state.gameModeIndex,
//           // gameSelectedIndex: gameIndex,
//           selectedWidgetIndex: state.selectedWidgetIndex));
//     } else {
//       state.wordsListSelected.add(word!);
//       emit(GameServicesState(
//           gamesListSelected: state.gamesListSelected,
//           gamesList: state.gamesList,
//           gameWidgets: state.gameWidgets,
//           wordsListSelected: state.wordsListSelected,
//           gameWidgetSelected: state.gameWidgetSelected,
//           gameModesSelected: state.gameModesSelected,
//           gameModesList: state.gameModesList,
//           wordsList: state.wordsList,
//           category: state.category,
//           gameModeIndex: state.gameModeIndex,
//           // gameSelectedIndex: gameIndex,
//           selectedWidgetIndex: state.selectedWidgetIndex));
//     }
//     getData();
//   }

//   // set category
//   void setCategory(
//       {Categories? category,
//       List<GamesList>? games,
//       List<WordsList>? words,
//       List<Map<String, String>>? gameModesList}) {
//     List<Map<String, dynamic>> gamesW = [
//       {"id": 1, "widget": TrueAndFalseGamePracticePage()},
//       {
//         "id": 2,
//         "widget": TrueAndFalseGamePage(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 3,
//         "widget": HomeChooseImage(
//           words: words!,
//           category: category!,
//         ),
//       },
//       {
//         "id": 4,
//         "widget": HomeChooseImage3(
//           words: words,
//           category: category,
//         ),
//       },
//       {
//         "id": 5,
//         "widget": HomeChooseImage4(
//           words: words,
//           category: category,
//         ),
//       },
//       {
//         "id": 6,
//         "widget": HomeFlipingCards2x2(
//           words: words,
//           category: category,
//         ),
//       },
//       {
//         "id": 7,
//         "widget": HomeFlipingCard3(
//           words: words,
//           category: category,
//         ),
//       },
//       {
//         "id": 8,
//         "widget": HomeFlipingCard4x4(
//           words: words,
//           category: category,
//         ),
//       },
//       {
//         "id": 9,
//         "widget": HomeMatchCircles(
//           words: words,
//           category: category,
//         ),
//       },
//       {
//         "id": 10,
//         "widget": HomeSquareMatching(
//           words: words,
//           category: category,
//         ),
//       },
//     ];

//     emit(GameServicesState(
//         gamesListSelected: [games![0]],
//         gameWidgetSelected: [gamesW[0]],
//         gamesList: games,
//         wordsListSelected: words,
//         gameWidgets: [gamesW[0]],
//         gameModesList: gameModesList!,
//         gameModesSelected: [gameModesList[0]],
//         selectedWidgetIndex: state.selectedWidgetIndex,
//         // gameSelectedIndex: 0,
//         gameModeIndex: 0,
//         wordsList: words,
//         category: category));
//     getData();
//   }

//   //Game mode manupilation
//   void gameModeManupilation({int? gameModeIndex, GamesList? game}) {
//     List<Map<String, dynamic>> gamesW = [
//       {"id": 1, "widget": TrueAndFalseGamePracticePage()},
//       {
//         "id": 2,
//         "widget": TrueAndFalseGamePage(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 3,
//         "widget": HomeChooseImage(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 4,
//         "widget": HomeChooseImage3(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 5,
//         "widget": HomeChooseImage4(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 6,
//         "widget": HomeFlipingCards2x2(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 7,
//         "widget": HomeFlipingCard3(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 8,
//         "widget": HomeFlipingCard4x4(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 9,
//         "widget": HomeMatchCircles(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//       {
//         "id": 10,
//         "widget": HomeSquareMatching(
//           words: state.wordsList,
//           category: state.category,
//         ),
//       },
//     ];
//     if (gameModeIndex == 0) {
//       state.gameModesSelected = [];
//       state.gameModesSelected.add(state.gameModesList[0]);
//       state.gamesListSelected = [];
//       state.gameWidgetSelected = [];
//       if (game == null) {
//         emit(GameServicesState(
//             gamesListSelected: [state.gamesList[0]],
//             gamesList: state.gamesList,
//             gameWidgetSelected: [gamesW[0]],
//             gameWidgets: [gamesW[0]],
//             wordsListSelected: state.wordsListSelected,
//             gameModesSelected: state.gameModesSelected,
//             gameModesList: state.gameModesList,
//             wordsList: state.wordsList,
//             category: state.category,
//             gameModeIndex: gameModeIndex!,
//             // gameSelectedIndex: gameIndex,
//             selectedWidgetIndex: state.selectedWidgetIndex));
//       } else {
//         state.gamesListSelected.add(game);
//         state.gameWidgetSelected
//             .add(gamesW.where((item) => item['id'] == game.id).single);
//         emit(GameServicesState(
//             gamesListSelected: state.gamesListSelected,
//             gamesList: state.gamesList,
//             gameWidgetSelected: state.gameWidgetSelected,
//             gameWidgets: [gamesW[0]],
//             wordsListSelected: state.wordsListSelected,
//             gameModesSelected: state.gameModesSelected,
//             gameModesList: state.gameModesList,
//             wordsList: state.wordsList,
//             category: state.category,
//             gameModeIndex: gameModeIndex!,
//             // gameSelectedIndex: gameIndex,
//             selectedWidgetIndex: state.selectedWidgetIndex));
//       }
//     } else if (gameModeIndex == 1) {
//       if (state.gamesListSelected.contains(game)) {
//         state.gameModesSelected = [];
//         state.gameModesSelected.add(state.gameModesList[1]);
//         state.gamesListSelected.remove(game);
//         state.gameWidgetSelected.removeWhere((item) => item['id'] == game!.id);
//         emit(GameServicesState(
//             gamesListSelected: state.gamesListSelected,
//             gameWidgetSelected: state.gameWidgetSelected,
//             gameModesSelected: state.gameModesSelected,
//             gamesList: state.gamesList,
//             wordsListSelected: state.wordsListSelected,
//             gameWidgets: gamesW,
//             gameModesList: state.gameModesList,
//             wordsList: state.wordsList,
//             category: state.category,
//             gameModeIndex: gameModeIndex!,
//             // gameSelectedIndex: gameIndex,
//             selectedWidgetIndex: state.selectedWidgetIndex));
//       } else {
//         if (game == null) {
//           print('game is null');
//           state.gamesListSelected = [];
//           state.gameModesSelected = [];
//           state.gameWidgetSelected = [];
//           state.gameModesSelected.add(state.gameModesList[1]);
//           emit(GameServicesState(
//               gamesListSelected: state.gamesListSelected,
//               gameModesSelected: state.gameModesSelected,
//               gameWidgetSelected: state.gameWidgetSelected,
//               gamesList: state.gamesList,
//               gameWidgets: gamesW,
//               wordsListSelected: state.wordsListSelected,
//               gameModesList: state.gameModesList,
//               wordsList: state.wordsList,
//               category: state.category,
//               gameModeIndex: gameModeIndex!,
//               // gameSelectedIndex: gameIndex,
//               selectedWidgetIndex: state.selectedWidgetIndex));
//         } else {
//           print('game is not null');
//           state.gameModesSelected = [];
//           state.gameModesSelected.add(state.gameModesList[1]);
//           state.gamesListSelected.add(game);
//           state.gameWidgetSelected
//               .add(gamesW.where((item) => item['id'] == game.id).single);
//           emit(GameServicesState(
//               gamesListSelected: state.gamesListSelected,
//               gameModesSelected: state.gameModesSelected,
//               gameWidgetSelected: state.gameWidgetSelected,
//               gamesList: state.gamesList,
//               gameWidgets: gamesW,
//               wordsListSelected: state.wordsListSelected,
//               gameModesList: state.gameModesList,
//               wordsList: state.wordsList,
//               category: state.category,
//               gameModeIndex: gameModeIndex!,
//               // gameSelectedIndex: gameIndex,
//               selectedWidgetIndex: state.selectedWidgetIndex));
//         }
//       }
//     } else if (gameModeIndex == 2) {
//       state.gamesListSelected = [];
//       state.gameWidgetSelected = [];
//       state.gameModesSelected = [];
//       state.gameModesSelected.add(state.gameModesList[2]);
//       var gmShf = state.gamesList;
//       gmShf.shuffle();
//       state.gamesListSelected = gmShf.getRange(0, 3).toList();
//       state.gamesListSelected.forEach((item) => state.gameWidgetSelected
//           .add(gamesW.where((element) => element['id'] == item.id).single));
//       emit(GameServicesState(
//           gamesListSelected: state.gamesListSelected,
//           gameWidgetSelected: state.gameWidgetSelected,
//           gamesList: state.gamesList,
//           wordsListSelected: state.wordsListSelected,
//           gameWidgets: gamesW,
//           wordsList: state.wordsList,
//           gameModesList: state.gameModesList,
//           gameModesSelected: state.gameModesSelected,
//           category: state.category,
//           gameModeIndex: gameModeIndex!,
//           // gameSelectedIndex: gameIndex,
//           selectedWidgetIndex: state.selectedWidgetIndex));
//     }
//     state.gameWidgetSelected.forEach((el) {
//       print(
//           'ModeIndex::=>$gameModeIndex Widget selected => ${el['widget']}  ::: Selected games length => ${state.gamesListSelected.length} ::: games length => ${state.gamesList.length}');
//     });
//     getData();
//   }

//   // increment widget_index game
//   void increment({Categories? category}) {
//     emit(GameServicesState(
//         gamesListSelected: state.gamesListSelected,
//         gameWidgetSelected: state.gameWidgetSelected,
//         wordsListSelected: state.wordsListSelected,
//         gamesList: state.gamesList,
//         gameWidgets: state.gameWidgets,
//         gameModesList: state.gameModesList,
//         selectedWidgetIndex:
//             state.gameModeIndex == 0 ? 0 : state.selectedWidgetIndex + 1,
//         gameModesSelected: state.gameModesSelected,
//         // gameSelectedIndex: 0,
//         gameModeIndex: state.gameModeIndex,
//         wordsList: state.wordsList,
//         category: state.category));
//     getData();
//   }

//   // update score
//   void updateScore({WordsList? wordsList, Categories? categories}) async {
//     await DatabaseHelper.instance.updateCategoryScore(categories!);
//     await DatabaseHelper.instance.updateScore(wordsList!);
//     getData();
//   }
// }
