import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_learning_game/constants/buttons.dart';
import 'package:language_learning_game/constants/calculations.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/words_list.dart';

import '../../../cubit/data_manipulation/data_manipulation_cubit.dart';

class HomeWordCategoryDetails extends StatelessWidget {
  final Categories category;
  final List<WordsList> words;
  const HomeWordCategoryDetails(
      {Key? key, required this.category, required this.words})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
        builder: (context, stateGame) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  homeColor,
                  homeColorLight,
                ])),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 6,
                        vertical: SizeConfig.heightMultiplier * 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: SizeConfig.heightMultiplier * 4,
                            width: SizeConfig.widthMultiplier * 6,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                Images.appBarCancel,
                                height: SizeConfig.heightMultiplier * 2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1.8,
                        ),
                        Expanded(
                          child: Image.asset(
                            category.catProfImg,
                            height: SizeConfig.heightMultiplier * 4.5,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category.catName,
                              style: TextStyling.titleTextStyle,
                            ),
                            SizedBox(height: SizeConfig.heightMultiplier * 0.3),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: SizeConfig.heightMultiplier * 1.2,
                                  width: SizeConfig.widthMultiplier * 35,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: LinearProgressIndicator(
                                      value: getPercentage20(
                                              category: category,
                                              words: words) /
                                          100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          yellowOrange),
                                      backgroundColor: whiteColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.widthMultiplier * 1.5,
                                ),
                                Text(
                                  '${getPercentage20(category: category, words: words)}/200',
                                  style: TextStyling.simpletitleTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: SizeConfig.heightMultiplier * 4,
                          width: SizeConfig.widthMultiplier * 7,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              Images.star,
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 0.2,
                        ),
                        Text(
                          '4.5',
                          style: TextStyling.buttonTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.lightBlue[400],
                    thickness: 0.9,
                    height: 3,
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  Expanded(child:
                      BlocBuilder<DataManipulationCubit, DataManipulationState>(
                    builder: (context, stateUpdated) {
                      if (stateUpdated is DataManipulationInitial) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (stateUpdated is DataManipulationError) {
                        return Center(
                          child: Text(
                            stateUpdated.errorMessage,
                            style: TextStyling.appBarTextB,
                          ),
                        );
                      } else if (stateUpdated is GettingData) {
                        var staticWords = stateUpdated.staticWordsList.where((item) => item.categoryId==category.id).toList();
                        return ListView.builder(
                            itemCount: staticWords.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.widthMultiplier * 4,
                                    vertical:
                                        SizeConfig.heightMultiplier * 1.2),
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.widthMultiplier * 4,
                                    vertical:
                                        SizeConfig.heightMultiplier * 1.2),
                                height: SizeConfig.heightMultiplier * 10,
                                decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      staticWords[index].imagePath,
                                      height: SizeConfig.heightMultiplier * 4,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 4,
                                    ),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Text(
                                          staticWords[index].wordName,
                                          style: TextStyling.buttonTextStyleB,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 3,
                                    ),
                                    Container(
                                      height: SizeConfig.heightMultiplier * 1.2,
                                      width: SizeConfig.widthMultiplier * 30,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: getPercentageDW20(
                                                  words: staticWords[index]) /
                                              100,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  yellowOrange),
                                          backgroundColor: grey,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 1.5,
                                    ),
                                    Text(
                                      '${getPercentageW20(words: staticWords[index])}/10',
                                      style: TextStyling.simpletitleTextStyleB,
                                    ),
                                  ],
                                ),
                              );
                            });
                      }
                      return Container();
                    },
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 12,
                        vertical: SizeConfig.heightMultiplier * 2),
                    child: DefaultButton(
                      press: () => Navigator.of(context)
                          .pushNamed('/practice_game', arguments: {
                        "category": category,
                        "words": words,
                      }),
                      text: "practice",
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
