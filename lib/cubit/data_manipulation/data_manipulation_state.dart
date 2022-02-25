part of 'data_manipulation_cubit.dart';

abstract class DataManipulationState {}

class DataManipulationInitial extends DataManipulationState {}

class DataManipulationError extends DataManipulationState {
  final String errorMessage;

  DataManipulationError(this.errorMessage);
}

class GettingData extends DataManipulationState {
  final List<Categories> categories;
  final List<GamesList> gamesList;
  final List<WordsList> wordsList;
  final List<WordsList> staticWordsList;
  final List<GamesMode> gameModes;
  GettingData(this.categories, this.gamesList, this.wordsList, this.staticWordsList,this.gameModes);
}
