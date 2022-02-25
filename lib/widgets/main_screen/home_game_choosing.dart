import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:language_learning_game/constants/buttons.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../constants/sizeConfig.dart';
import '../../constants/snack_bar.dart';
import '../../constants/text_styling.dart';
import '../../cubit/game_handler/games_handler_cubit.dart';

class HomeGameChoosing extends StatelessWidget {
  const HomeGameChoosing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
        builder: (context, stateGame) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(Images.bgImage),
              fit: BoxFit.cover,
            )),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 6),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4.5,
                  ),
                  _backButton(context),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2.5,
                  ),
                  Expanded(
                      child: Stack(
                    clipBehavior: Clip.antiAlias,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 78,
                        margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 6),
                        decoration: BoxDecoration(
                            color: primaryGreyyyy,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(30.0),
                              topRight: const Radius.circular(30.0),
                              bottomLeft: const Radius.circular(50.0),
                              bottomRight: const Radius.circular(50.0),
                            )),
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 76,
                        margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 3),
                        decoration: BoxDecoration(
                            color: primaryGreyyy,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(30.0),
                              topRight: const Radius.circular(30.0),
                              bottomLeft: const Radius.circular(30.0),
                              bottomRight: const Radius.circular(30.0),
                            )),
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 74,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(30.0),
                              topRight: const Radius.circular(30.0),
                              bottomLeft: const Radius.circular(22.0),
                              bottomRight: const Radius.circular(22.0),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            Center(
                              child: Text(
                                'Select Game To Play',
                                style: TextStyling.appBarTextB,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
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
                                style: TextStyling.appBarTextGB,
                              ),
                            ),
                            _gamesList(stateGame),
                            Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 3,
                                bottom: SizeConfig.heightMultiplier*1.2
                              ),
                              child: Text(
                                'Select Category',
                                style: TextStyling.appBarTextGB,
                              ),
                            ),
                            _catagoriesList(stateGame),
                             Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 3,
                                bottom: SizeConfig.heightMultiplier*1.2
                              ),
                              child: Text(
                                'Game Mode',
                                style: TextStyling.appBarTextGB,
                              ),
                            ),
                             game_mode(stateGame),
                              SizedBox(
                              height: SizeConfig.heightMultiplier * 1.5,
                            ),
                            Padding(
                              padding:EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*4),
                              child: DefaultButton(
                                press: (){
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
                                text: "start now",
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }

 game_mode(GamesHandlerState stateGame) {
    return Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 3),
                            child: SizedBox(
                              height: SizeConfig.heightMultiplier * 10,
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
                                                  8,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      35,
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
                                                  7.5,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      35,
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
                                                    Image.asset(
                                                      stateGame
                                                          .gamesModeList[
                                                              index]
                                                          .imagePath,
                                                          height: SizeConfig.heightMultiplier*4,
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
                                                            .appBarTextSB,
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
                          );
  }

  _backButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
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
              height: SizeConfig.heightMultiplier * 2.5,
            ),
          ),
        ),
      ),
    );
  }

  _gamesList(GamesHandlerState stateGame) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3),
      child: SizedBox(
        height: SizeConfig.heightMultiplier * 20,
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
                        height: SizeConfig.heightMultiplier * 18,
                        width: SizeConfig.widthMultiplier * 30,
                        decoration: BoxDecoration(
                            color: stateGame.selectedGamesList
                                    .contains(stateGame.gamesList[index])
                                ? primaryColor
                                : grey,
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 17.5,
                        width: SizeConfig.widthMultiplier * 30,
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 4),
                        decoration: BoxDecoration(
                            color: Color(
                                int.parse(stateGame.gamesList[index].color)),
                            borderRadius: BorderRadius.circular(22)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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

  _catagoriesList(GamesHandlerState stateGame) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3),
      child: SizedBox(
        height: SizeConfig.heightMultiplier * 10,
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
                        height: SizeConfig.heightMultiplier * 8,
                        width: SizeConfig.widthMultiplier * 35,
                        decoration: BoxDecoration(
                            color: stateGame.selectedCategories
                                    .contains(stateGame.categories[index])
                                ? primaryColor
                                : grey,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 7.5,
                        width: SizeConfig.widthMultiplier * 35,
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
                              Image.asset(
                                stateGame.categories[index].catProfImg,
                                height: SizeConfig.heightMultiplier*4,
                              ),
                              Expanded(
                                child: Text(
                                  stateGame.categories[index].catName,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyling.appBarTextSB,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      stateGame.categories[index].catOpened == 0
                          ? Container()
                          : Container(
                              height: SizeConfig.heightMultiplier * 8,
                              width: SizeConfig.widthMultiplier * 35,
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

 
}
