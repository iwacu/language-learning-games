import 'package:language_learning_game/widgets/answers_types/correct_answer.dart';
import 'package:language_learning_game/widgets/answers_types/correct_answer_practice.dart';
import 'package:language_learning_game/widgets/answers_types/wrong_answer.dart';
import 'package:language_learning_game/widgets/game_pages/true_false_game/true_false_practice.dart';
import 'package:language_learning_game/widgets/home_game/home_game.dart';
import 'package:language_learning_game/widgets/home_game/home_gmae_summry.dart';
import 'package:language_learning_game/widgets/main_screen/choose_game.dart';
import 'package:language_learning_game/widgets/main_screen/home_game_choosing.dart';
import 'package:language_learning_game/widgets/main_screen/main_page.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_game/widgets/main_widgets_pages/home_page/category_word_details.dart';
import 'package:language_learning_game/widgets/onBoarding_screen/onboarding_screen.dart';
import 'package:language_learning_game/widgets/page_not_found/page_not_found.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case '/main_page':
        return MaterialPageRoute(builder: (_) => MainPage());
      // game_pages
      case '/main_game':
        return MaterialPageRoute(builder: (_) => HomeGameMain());
      case '/category_word_detail':
        return MaterialPageRoute(
            builder: (_) => HomeWordCategoryDetails(
                  category: (arguments as Map)['category'],
                  words: (arguments)['words'],
                ));
      case '/practice_game':
        return MaterialPageRoute(
            builder: (_) => TrueAndFalseGamePracticePage(
                categories: (arguments as Map)['category'],
                words: (arguments)['words']));
      case '/choose_game':
        return MaterialPageRoute(builder: (_) => HomeGameChoosing());
      case '/summary_game':
        return MaterialPageRoute(builder: (_)=>HomeSummaryGame());
      case '/correct_answer':
        return MaterialPageRoute(
            builder: (_) => CorrectAnswer(
                  categories: (arguments as Map)['category'],
                ));
      case '/correct_answer_practice':
        return MaterialPageRoute(
            builder: (_) => CorrectAnswerPractice(
                  categories: (arguments as Map)['category'],
                ));
      case '/wrong_answer':
        return MaterialPageRoute(builder: (_) => WrongAnswer());
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}
