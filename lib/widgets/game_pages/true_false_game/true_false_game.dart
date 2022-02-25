import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_learning_game/constants/buttons.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:language_learning_game/cubit/data_manipulation/data_manipulation_cubit.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/words_list.dart';

class TrueAndFalseGamePage extends StatefulWidget {
  const TrueAndFalseGamePage({Key? key}) : super(key: key);

  @override
  State<TrueAndFalseGamePage> createState() => _TrueAndFalseGamePageState();
}

class _TrueAndFalseGamePageState extends State<TrueAndFalseGamePage> {
  bool _cancel = false;
  bool _right = false;
  final player = AudioPlayer();
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
      builder: (context, stateGame) {
        var words = stateGame.selectedWord1
            .where(
                (item) => item.categoryId == stateGame.selectedCategories[0].id)
            .toList();
        return ListView(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 5,
                  width: SizeConfig.widthMultiplier * 8,
                  child: Center(
                    child: Image.asset(
                      stateGame.selectedCategories[0].catProfImg,
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text(
                  stateGame.selectedCategories[0].catName,
                  style: TextStyling.appBarTextR,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Center(
              child: Text(
                'Select Correct Choice',
                style: TextStyling.titleTextStyle,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Center(
              child: Image.asset(
                words[0].imagePath,
                height: SizeConfig.heightMultiplier * 30,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    await player.setAsset(words[1].audioPath);
                    await player.play();
                  },
                  child: Container(
                    height: SizeConfig.heightMultiplier * 5,
                    width: SizeConfig.widthMultiplier * 10,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: SvgPicture.asset(
                        Images.soundIcon,
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text(
                  words[0].originWordName,
                  style: TextStyling.appBarTextW,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (words[0].id != words[1].id) {
                      setState(() {
                        _cancel = true;
                        _right = false;
                      });
                      context.read<GamesHandlerCubit>().updateScore(
                              wordsList: WordsList(
                                  id: words[0].id,
                                  color: words[0].color,
                                  wordName: words[0].wordName,
                                  audioPath: words[0].audioPath,
                                  originWordName: words[0].originWordName,
                                  imagePath: words[0].imagePath,
                                  categoryId: words[0].categoryId,
                                  catScore: (words[0].catScore + 5)),
                              categories: Categories(
                                  id: stateGame.selectedCategories[0].id,
                                  catUserid:
                                      stateGame.selectedCategories[0].catUserid,
                                  catOpened:
                                      stateGame.selectedCategories[0].catOpened,
                                  catName:
                                      stateGame.selectedCategories[0].catName,
                                  catProfImg: stateGame
                                      .selectedCategories[0].catProfImg,
                                  catBadge:
                                      stateGame.selectedCategories[0].catBadge,
                                  catPercentage: stateGame
                                      .selectedCategories[0].catPercentage,
                                  catColor:
                                      stateGame.selectedCategories[0].catColor,
                                  route: stateGame.selectedCategories[0].route,
                                  catScore: (stateGame
                                          .selectedCategories[0].catScore +
                                      5)));
                          Navigator.of(context).pushNamed('/correct_answer',
                              arguments: {
                                'category': stateGame.selectedCategories[0]
                              });
                          BlocProvider.of<DataManipulationCubit>(context)
                              .getData();
                    } else {
                      setState(() {
                        _cancel = true;
                        _right = false;
                      });
                        Navigator.of(context).pushNamed('/wrong_answer');
                    }
                  },
                  child: Stack(
                    clipBehavior: Clip.antiAlias,
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 13.5,
                      width: SizeConfig.widthMultiplier * 30,
                        decoration: BoxDecoration(
                            //  shape: BoxShape.circle, border: Border.all(color: grey)),
                            color: _cancel ? redGrey : grey,
                            border: Border.all(color: _cancel ? redGrey : grey),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Container(
                    height: SizeConfig.heightMultiplier * 13,
                      width: SizeConfig.widthMultiplier * 30,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            //  shape: BoxShape.circle, border: Border.all(color: grey)),
                            border: Border.all(color: _cancel ? redGrey : grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Container( height: SizeConfig.heightMultiplier * 8,
                        width: SizeConfig.widthMultiplier * 16,
                          decoration: BoxDecoration(
                            color: _cancel ? redGrey : whiteColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: _cancel ? redGrey : grey),
                          ),
                          child: Center(
                            child: Image.asset(
                              Images.cancelBig,
                              height: SizeConfig.heightMultiplier * 4,
                            ),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 3,
                ),
                GestureDetector(
                  onTap: () {
                    if (words[0].id == words[1].id) {
                      setState(() {
                        _cancel = false;
                        _right = true;
                      });
                      stateGame.gamesPlayed.add(words[0]);
                      context.read<GamesHandlerCubit>().updateScore(
                              wordsList: WordsList(
                                  id: words[0].id,
                                  color: words[0].color,
                                  wordName: words[0].wordName,
                                  audioPath: words[0].audioPath,
                                  originWordName: words[0].originWordName,
                                  imagePath: words[0].imagePath,
                                  categoryId: words[0].categoryId,
                                  catScore: (words[0].catScore + 5)),
                              categories: Categories(
                                  id: stateGame.selectedCategories[0].id,
                                  catUserid:
                                      stateGame.selectedCategories[0].catUserid,
                                  catOpened:
                                      stateGame.selectedCategories[0].catOpened,
                                  catName:
                                      stateGame.selectedCategories[0].catName,
                                  catProfImg: stateGame
                                      .selectedCategories[0].catProfImg,
                                  catBadge:
                                      stateGame.selectedCategories[0].catBadge,
                                  catPercentage: stateGame
                                      .selectedCategories[0].catPercentage,
                                  catColor:
                                      stateGame.selectedCategories[0].catColor,
                                  route: stateGame.selectedCategories[0].route,
                                  catScore: (stateGame
                                          .selectedCategories[0].catScore +
                                      5)));
                          Navigator.of(context).pushNamed('/correct_answer',
                              arguments: {
                                'category': stateGame.selectedCategories[0]
                              });
                          BlocProvider.of<DataManipulationCubit>(context)
                              .getData();
                    } else {
                      setState(() {
                        _cancel = false;
                        _right = true;
                      });
                        Navigator.of(context).pushNamed('/wrong_answer');
                    }
                  },
                  child: Stack(
                    clipBehavior: Clip.antiAlias,
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 13.5,
                      width: SizeConfig.widthMultiplier * 30,
                        decoration: BoxDecoration(
                            //  shape: BoxShape.circle, border: Border.all(color: grey)),
                            color: _right ? green : grey,
                            border: Border.all(color: _right ? green : grey),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 13,
                      width: SizeConfig.widthMultiplier * 30,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            //  shape: BoxShape.circle, border: Border.all(color: grey)),
                            border: Border.all(color: _right ? green : grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Container(
                         height: SizeConfig.heightMultiplier * 8,
                        width: SizeConfig.widthMultiplier * 16,
                          decoration: BoxDecoration(
                            color: _right ? green : whiteColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: _right ? green : grey),
                          ),
                          child: Center(
                            child: Image.asset(
                              Images.right,
                              height: SizeConfig.heightMultiplier * 4,
                            ),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: SizeConfig.heightMultiplier * 4,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: SizeConfig.widthMultiplier * 10),
            //   child: _right || _cancel
            //       ? DefaultButtonGameChecked(
            //           text: 'check',
            //           press: () {
            //             if (_correctAnswer == _selectedAnswer) {
            //               context.read<GamesHandlerCubit>().updateScore(
            //                   wordsList: WordsList(
            //                       id: words[0].id,
            //                       color: words[0].color,
            //                       wordName: words[0].wordName,
            //                       audioPath: words[0].audioPath,
            //                       originWordName: words[0].originWordName,
            //                       imagePath: words[0].imagePath,
            //                       categoryId: words[0].categoryId,
            //                       catScore: (words[0].catScore + 5)),
            //                   categories: Categories(
            //                       id: stateGame.selectedCategories[0].id,
            //                       catUserid:
            //                           stateGame.selectedCategories[0].catUserid,
            //                       catOpened:
            //                           stateGame.selectedCategories[0].catOpened,
            //                       catName:
            //                           stateGame.selectedCategories[0].catName,
            //                       catProfImg: stateGame
            //                           .selectedCategories[0].catProfImg,
            //                       catBadge:
            //                           stateGame.selectedCategories[0].catBadge,
            //                       catPercentage: stateGame
            //                           .selectedCategories[0].catPercentage,
            //                       catColor:
            //                           stateGame.selectedCategories[0].catColor,
            //                       route: stateGame.selectedCategories[0].route,
            //                       catScore: (stateGame
            //                               .selectedCategories[0].catScore +
            //                           5)));
            //               Navigator.of(context).pushNamed('/correct_answer',
            //                   arguments: {
            //                     'category': stateGame.selectedCategories[0]
            //                   });
            //               BlocProvider.of<DataManipulationCubit>(context)
            //                   .getData();
            //             } else {
            //               Navigator.of(context).pushNamed('/wrong_answer');
            //             }
            //           },
            //         )
            //       : DefaultButtonGame(
            //           text: 'check',
            //           press: () {
            //             // context.read<GameServicesCubit>().gameManupilation();
            //           },
            //         ),
            // )
    
          ],
        );
      },
    );
  }
}
