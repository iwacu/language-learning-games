import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_learning_game/constants/buttons.dart';
import 'package:language_learning_game/constants/calculations.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:language_learning_game/cubit/data_manipulation/data_manipulation_cubit.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';
import 'package:language_learning_game/models/categories.dart';

class CorrectAnswer extends StatelessWidget {
  final Categories categories;
  const CorrectAnswer({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<DataManipulationCubit, DataManipulationState>(
      builder: (context, stateGame) {
        if (stateGame is DataManipulationInitial) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.bgImage), fit: BoxFit.cover)),
          );
        } else if (stateGame is GettingData) {
          var sum = 0.0;
          var catWords = stateGame.wordsList
              .where((item) => item.categoryId == categories.id)
              .toList();
          catWords.forEach((item) {
            sum += item.catScore;
          });
          return sum == 1800
              ? _levelComplete(context, sum)
              : _levelNotComplete(context);
        }
        return Container();
      },
    ));
  }

  _levelComplete(BuildContext context, double sum) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(Images.bgImage),
        fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 8),
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 8,
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    Images.appBarCancel,
                    color: primaryColor,
                    height: SizeConfig.heightMultiplier * 4,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 8.5,
          ),
          Stack(
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 70,
                width: SizeConfig.widthMultiplier * 68,
                decoration: BoxDecoration(
                    color: primaryGreyyyy,
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                height: SizeConfig.heightMultiplier * 68,
                width: SizeConfig.widthMultiplier * 74,
                decoration: BoxDecoration(
                    color: primaryGreyyy,
                    borderRadius: BorderRadius.circular(40)),
              ),
              Container(
                height: SizeConfig.heightMultiplier * 66,
                width: SizeConfig.widthMultiplier * 78,
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(22)),
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 34,
                      width: SizeConfig.widthMultiplier * 78,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(Images.firework),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LEVEL\nCOMPLETE',
                          textAlign: TextAlign.center,
                          style: TextStyling.levelComplete1,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1.5,
                        ),
                        Text(
                          'AMAZING',
                          textAlign: TextAlign.center,
                          style: TextStyling.levelComplete2,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1.2,
                        ),
                        Stack(
                          clipBehavior: Clip.antiAlias,
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              width: SizeConfig.widthMultiplier * 34,
                              height: SizeConfig.heightMultiplier * 20,
                              child: new CircularProgressIndicator(
                                backgroundColor: grey,
                                color: greenLight,
                                strokeWidth: 15,
                                value: getLevelValue(sum: sum),
                              ),
                            ),
                            Text(
                              getPercentageLevel(sum: sum),
                              style: TextStyling.levelComplete2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1.5,
                        ),
                        Text(
                          'SCORE',
                          textAlign: TextAlign.center,
                          style: TextStyling.aappBarTextB,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 8),
                          child:
                              BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
                            builder: (context, state) {
                              return DefaultButtonGameAll(
                                text: 'Continue',
                                press: () {
                                  context
                                      .read<GamesHandlerCubit>()
                                      .resetSelection();
                                  BlocProvider.of<DataManipulationCubit>(
                                          context)
                                      .settingCategory(category: categories);
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 8.5,
          ),
        ],
      ),
    );
  }

  _levelNotComplete(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.bgImage), fit: BoxFit.cover)),
      child: Center(
        child: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 64,
              width: SizeConfig.widthMultiplier * 68,
              decoration: BoxDecoration(
                  color: primaryGreyyyy,
                  borderRadius: BorderRadius.circular(50)),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 62,
              width: SizeConfig.widthMultiplier * 74,
              decoration: BoxDecoration(
                  color: primaryGreyyy,
                  borderRadius: BorderRadius.circular(40)),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 60,
              width: SizeConfig.widthMultiplier * 78,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(22)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 22,
                    width: SizeConfig.widthMultiplier * 30,
                    decoration: BoxDecoration(
                      color: green,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        Images.right,
                        height: SizeConfig.heightMultiplier * 8,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Text(
                    'Awesome Correct!',
                    style: TextStyling.answerCorrectTextStyle,
                  ),
                  // SizedBox(
                  //   height: SizeConfig.heightMultiplier * 2,
                  // ),
                  // BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
                  //   builder: (context, state) {
                  //     return state.selectedGameWidgets.length ==
                  //             (state.selectedWidgetIndex + 1)
                  //         ? Container()
                  //         : Padding(
                  //             padding: EdgeInsets.symmetric(
                  //                 horizontal: SizeConfig.widthMultiplier * 8),
                  //             child: DefaultButtonGameAll(
                  //               text: 'Next Game',
                  //               press: () {
                  //                 context
                  //                     .read<GamesHandlerCubit>()
                  //                     .increasePageIndex();
                  //                 BlocProvider.of<DataManipulationCubit>(
                  //                         context)
                  //                     .settingCategory(category: categories);
                  //                 Navigator.pop(context);
                  //               },
                  //             ),
                  //           );
                  //   },
                  // ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 8),
                    child: BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
                      builder: (context, state) {
                        return DefaultButtonGameChecked(
                          text: 'Done',
                          press: () {
                            // => to use in summary game context.read<GamesHandlerCubit>().resetSelection();
                            BlocProvider.of<DataManipulationCubit>(context)
                                .settingCategory(category: categories);
                                Navigator.of(context).pushNamed('/summary_game');
                            // Navigator.pop(context);
                            // Navigator.pop(context);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
