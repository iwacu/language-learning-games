import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:language_learning_game/constants/animations_c.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/words_list.dart';

class HomeFlipingCard3 extends StatefulWidget {
  const HomeFlipingCard3({Key? key}) : super(key: key);

  @override
  State<HomeFlipingCard3> createState() => _HomeFlipingCard3State();
}

class _HomeFlipingCard3State extends State<HomeFlipingCard3> {
  final player = AudioPlayer();
  final List<GlobalKey<ShakeWidgetState>> shakeKey =
      List.generate(10, (index) => GlobalKey<ShakeWidgetState>());
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
      builder: (context, stateGame) {
        var _wordsSelected = stateGame.selectedWord9.getRange(0, 9).toList();
        var _wordsSelectedShuffled = _wordsSelected.reversed.toList();
        _wordsSelectedShuffled.sort(
            (a, b) => a.wordName.toString().compareTo(b.wordName.toString()));

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
                      stateGame.categories[0].catProfImg,
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text(
                  stateGame.categories[0].catName,
                  style: TextStyling.buttonTextStyleB,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Center(
              child: Text(
                'Select Correct Image',
                style: TextStyling.titleTextStyle,
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
                    await player.setAsset(
                        _wordsSelectedShuffled[stateGame.selectedIndex9]
                            .audioPath);
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
                  _wordsSelectedShuffled[stateGame.selectedIndex9]
                      .originWordName,
                  style: TextStyling.titleTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GridView.builder(
                  padding: EdgeInsets.only(
                    bottom: SizeConfig.heightMultiplier * 2,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _wordsSelected.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: SizeConfig.heightMultiplier * 4,
                      crossAxisSpacing: SizeConfig.heightMultiplier * 2,
                      crossAxisCount: 3,
                      mainAxisExtent:
                                      SizeConfig.heightMultiplier * 12),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (stateGame.selectedWordsWidget.length == 8) {
                          if (_wordsSelectedShuffled[stateGame.selectedIndex9]
                                  .id ==
                              _wordsSelected[index].id) {
                            context.read<GamesHandlerCubit>().wordManupilation(
                                wordsList: _wordsSelected[index],
                                done: true,
                                indexType: 9);
                            context.read<GamesHandlerCubit>().updateScore(
                                wordsList: WordsList(
                                    id: _wordsSelected[index].id,
                                    color: _wordsSelected[index].color,
                                    wordName: _wordsSelected[index].wordName,
                                    audioPath: _wordsSelected[index].audioPath,
                                    originWordName:
                                        _wordsSelected[index].originWordName,
                                    imagePath: _wordsSelected[index].imagePath,
                                    categoryId:
                                        _wordsSelected[index].categoryId,
                                    catScore:
                                        (_wordsSelected[index].catScore + 5)),
                                categories: Categories(
                                    id: stateGame.categories[0].id,
                                    catUserid:
                                        stateGame.categories[0].catUserid,
                                    catOpened:
                                        stateGame.categories[0].catOpened,
                                    catName: stateGame.categories[0].catName,
                                    catProfImg:
                                        stateGame.categories[0].catProfImg,
                                    catBadge: stateGame.categories[0].catBadge,
                                    catPercentage:
                                        stateGame.categories[0].catPercentage,
                                    catColor: stateGame.categories[0].catColor,
                                    route: stateGame.categories[0].route,
                                    catScore:
                                        (stateGame.categories[0].catScore +
                                            5)));
                            // BlocProvider.of<DataManipulationCubit>(context)
                            //     .getData();
                            Navigator.of(context).pushNamed('/correct_answer',
                                arguments: {
                                  'category': stateGame.categories[0]
                                });
                          } else {
                            return shakeKey[index].currentState?.shake();
                          }
                        } else {
                          if (_wordsSelectedShuffled[stateGame.selectedIndex9]
                                  .id ==
                              _wordsSelected[index].id) {
                            context.read<GamesHandlerCubit>().wordManupilation(
                                wordsList: _wordsSelected[index],
                                done: false,
                                indexType: 9);
                            context.read<GamesHandlerCubit>().updateScore(
                                wordsList: WordsList(
                                    id: _wordsSelected[index].id,
                                    color: _wordsSelected[index].color,
                                    wordName: _wordsSelected[index].wordName,
                                    originWordName:
                                        _wordsSelected[index].originWordName,
                                    audioPath: _wordsSelected[index].audioPath,
                                    imagePath: _wordsSelected[index].imagePath,
                                    categoryId:
                                        _wordsSelected[index].categoryId,
                                    catScore:
                                        (_wordsSelected[index].catScore + 5)),
                                categories: Categories(
                                    id: stateGame.categories[0].id,
                                    catUserid:
                                        stateGame.categories[0].catUserid,
                                    catOpened:
                                        stateGame.categories[0].catOpened,
                                    catName: stateGame.categories[0].catName,
                                    catProfImg:
                                        stateGame.categories[0].catProfImg,
                                    catBadge: stateGame.categories[0].catBadge,
                                    catPercentage:
                                        stateGame.categories[0].catPercentage,
                                    catColor: stateGame.categories[0].catColor,
                                    route: stateGame.categories[0].route,
                                    catScore:
                                        (stateGame.categories[0].catScore +
                                            5)));
                            // BlocProvider.of<DataManipulationCubit>(context)
                            //     .getData();
                          } else {
                            return shakeKey[index].currentState?.shake();
                          }
                        }
                      },
                      child: ShakeWidget(
                        key: shakeKey[index],
                        shakeCount: 3,
                        shakeOffset: 10,
                        shakeDuration: Duration(milliseconds: 500),
                        child: Stack(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: stateGame.selectedWordsWidget
                                          .contains(_wordsSelected[index])
                                      ? SizeConfig.heightMultiplier * 2
                                      : 0),
                              decoration: BoxDecoration(
                                  //  shape: BoxShape.circle, border: Border.all(color: grey)),
                                  color: stateGame.selectedWordsWidget
                                          .contains(_wordsSelected[index])
                                      ? selectedColor
                                      : whiteColor,
                                  border: Border.all(
                                      color: stateGame.selectedWordsWidget
                                              .contains(_wordsSelected[index])
                                          ? selectedColor
                                          : whiteColor),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: stateGame.selectedWordsWidget
                                          .contains(_wordsSelected[index])
                                      ? SizeConfig.heightMultiplier * 1.5
                                      : 0,
                                  left: SizeConfig.heightMultiplier * 0.1,
                                  right: SizeConfig.heightMultiplier * 0.1,
                                  bottom: SizeConfig.heightMultiplier * 0.3),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: stateGame.selectedWordsWidget
                                          .contains(_wordsSelected[index])
                                      ? selectedColor
                                      : whiteColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    _wordsSelected[index].imagePath,
                                    height: SizeConfig.heightMultiplier * 8,
                                  ),
                                ),
                              ),
                            ),
                            stateGame.selectedWordsWidget
                                    .contains(_wordsSelected[index])
                                ? Container(
                                    margin: EdgeInsets.only(
                                        bottom:
                                            SizeConfig.heightMultiplier * 0.6),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                Images.smallBackGround),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                : Container(),
                            stateGame.selectedWordsWidget
                                    .contains(_wordsSelected[index])
                                ? Center(
                                    child: Image.asset(
                                      Images.question,
                                      height: SizeConfig.heightMultiplier * 8,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        );
      },
    );
  }
}
