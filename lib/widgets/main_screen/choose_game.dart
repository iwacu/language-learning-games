import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/snack_bar.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';

class ChooseGame extends StatelessWidget {
  const ChooseGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
      builder: (context, stateGame) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Images.bgImage),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 4.5,
              ),
              _backButton(context),
              Expanded(
                flex: 3,
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 90,
                      width: SizeConfig.widthMultiplier * 68,
                      decoration: BoxDecoration(
                          color: primaryGreyyyy,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 88,
                      width: SizeConfig.widthMultiplier * 74,
                      decoration: BoxDecoration(
                          color: primaryGreyyy,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Container(
                        height: SizeConfig.heightMultiplier * 86,
                        width: SizeConfig.widthMultiplier * 78,
                        padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 2),
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(22)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            Center(
                              child: Text(
                                'Select Game To Play',
                                style: TextStyling.titleTextStyleB,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1.2,
                            ),
                            Divider(
                              thickness: 0.8,
                              color: grey,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 3,
                                top: SizeConfig.heightMultiplier * 1.5,
                                bottom: SizeConfig.heightMultiplier * 1.5,
                              ),
                              child: Text(
                                'Select Game',
                                style: TextStyling.appBarTextBB,
                              ),
                            ),
                            _gamesList(stateGame),
                            Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 3,
                                top: SizeConfig.heightMultiplier * 1.5,
                                bottom: SizeConfig.heightMultiplier * 1.5,
                              ),
                              child: Text(
                                'Select Category',
                                style: TextStyling.appBarTextBB,
                              ),
                            ),
                            _catagoriesList(stateGame),
                            Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 3,
                                top: SizeConfig.heightMultiplier * 1.5,
                                bottom: SizeConfig.heightMultiplier * 1.5,
                              ),
                              child: Text(
                                'Game Mode',
                                style: TextStyling.appBarTextBB,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.widthMultiplier * 1.2),
                              child: SizedBox(
                                height: SizeConfig.heightMultiplier * 12,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: stateGame.gamesModeList.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            right: SizeConfig.widthMultiplier *
                                                1.2),
                                        child: GestureDetector(
                                          onTap: () => context
                                              .read<GamesHandlerCubit>()
                                              .selectGameMode(
                                                  gamesMode: stateGame
                                                      .gamesModeList[index]),
                                          child: Stack(
                                            clipBehavior: Clip.antiAlias,
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Container(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    11,
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        40,
                                                decoration: BoxDecoration(
                                                    color: stateGame
                                                            .selectedGamesModeList
                                                            .contains(stateGame
                                                                    .gamesModeList[
                                                                index])
                                                        ? primaryColor
                                                        : grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                              Container(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    10.5,
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        40,
                                                decoration: BoxDecoration(
                                                    color: whiteColor,
                                                    border: Border.all(
                                                        color: stateGame
                                                                .selectedGamesModeList
                                                                .contains(stateGame
                                                                        .gamesModeList[
                                                                    index])
                                                            ? primaryColor
                                                            : grey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Image.asset(
                                                          stateGame
                                                              .gamesModeList[
                                                                  index]
                                                              .imagePath,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          stateGame
                                                              .gamesModeList[
                                                                  index]
                                                              .gameName,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyling
                                                              .appBarTextBB,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1.5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.widthMultiplier * 1.5),
                              child: GestureDetector(
                                onTap: () {
                                  var zz = stateGame.words
                                      .where((item) =>
                                          item.categoryId ==
                                          stateGame.selectedCategories[0].id)
                                      .toList();
                                  zz.forEach((item) {});
                                  if (stateGame.selectedGameWidgets.isEmpty) {
                                    showSnackBar(context,
                                        'Please at least select a Game');
                                  } else if (stateGame
                                      .selectedGamesList.isEmpty) {
                                    showSnackBar(context,
                                        'Please at least select a Game');
                                  } else {
                                    Navigator.of(context)
                                        .pushNamed('/main_game');
                                  }
                                },
                                child: Stack(
                                  clipBehavior: Clip.antiAlias,
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                      height: SizeConfig.heightMultiplier * 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: primaryColor,
                                      ),
                                    ),
                                    Container(
                                      height: SizeConfig.heightMultiplier * 7.5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: homeColor,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'START NOW',
                                          style: TextStyling.buttonTextStyle,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }

 _catagoriesList(GamesHandlerState stateGame) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 1.2),
      child: SizedBox(
        height: SizeConfig.heightMultiplier * 12,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stateGame.categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.widthMultiplier * 1.2),
                child: GestureDetector(
                  onTap: () {
                    if (stateGame.categories[index].catOpened == 0) {
                      context.read<GamesHandlerCubit>().selectCategory(
                          category: stateGame.categories[index]);
                    } else {
                      showSnackBar(context, 'Game Not Opened');
                    }
                  },
                  child: Stack(
                    clipBehavior: Clip.antiAlias,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 11,
                        width: SizeConfig.widthMultiplier * 40,
                        decoration: BoxDecoration(
                            color: stateGame.selectedCategories
                                    .contains(stateGame.categories[index])
                                ? primaryColor
                                : grey,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 10.5,
                        width: SizeConfig.widthMultiplier * 40,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(
                                color: stateGame.selectedCategories
                                        .contains(stateGame.categories[index])
                                    ? primaryColor
                                    : grey),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  stateGame.categories[index].catProfImg,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  stateGame.categories[index].catName,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyling.appBarTextBB,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      stateGame.categories[index].catOpened == 0
                          ? Container()
                          : Container(
                              height: SizeConfig.heightMultiplier * 10.5,
                              width: SizeConfig.widthMultiplier * 40,
                              decoration: BoxDecoration(
                                color: Colors.black38.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                      stateGame.categories[index].catOpened == 1
                          ? Positioned(
                              left: SizeConfig.widthMultiplier * 4,
                              top: SizeConfig.heightMultiplier * 1.5,
                              child: Container(
                                height: SizeConfig.heightMultiplier * 4,
                                child: SvgPicture.asset(
                                  Images.lockIcon,
                                  height: SizeConfig.heightMultiplier * 2.5,
                                ),
                              ))
                          : Container()
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  _gamesList(GamesHandlerState stateGame) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 1.2),
      child: SizedBox(
        height: SizeConfig.heightMultiplier * 22,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stateGame.gamesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 2),
                child: GestureDetector(
                  onTap: () => context.read<GamesHandlerCubit>().selectGame(
                      gamesMode: stateGame.selectedGamesModeList[0],
                      gamesList: stateGame.gamesList[index]),
                  child: Stack(
                    clipBehavior: Clip.antiAlias,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 21,
                        width: SizeConfig.widthMultiplier * 30,
                        decoration: BoxDecoration(
                            color: stateGame.selectedGamesList
                                    .contains(stateGame.gamesList[index])
                                ? primaryColor
                                : grey,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 20.5,
                        width: SizeConfig.widthMultiplier * 30,
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 4),
                        decoration: BoxDecoration(
                            color: Color(
                                int.parse(stateGame.gamesList[index].color)),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 4,
                            ),
                            Image.asset(
                              stateGame.gamesList[index].imagePath,
                              height: SizeConfig.heightMultiplier * 8,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1.2,
                            ),
                            Text(
                              stateGame.gamesList[index].gameName,
                              textAlign: TextAlign.center,
                              style: TextStyling.sSimpleText,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  _backButton(BuildContext context) {
    return Align(
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
    );
  }
}
