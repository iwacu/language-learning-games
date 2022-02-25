import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_learning_game/constants/snack_bar.dart';

import '../../constants/calculations.dart';
import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../constants/sizeConfig.dart';
import '../../constants/text_styling.dart';
import '../../cubit/data_manipulation/data_manipulation_cubit.dart';
import '../../cubit/game_handler/games_handler_cubit.dart';

class HomeSummaryGame extends StatelessWidget {
  const HomeSummaryGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
        builder: (context, stateGame) {
          var words = stateGame.words
              .where((item) =>
                  item.categoryId == stateGame.selectedCategories[0].id)
              .toList();
          return Container(
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  homeColor,
                  homeColorLight,
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.heightMultiplier * 4.5,
                ),
                _backButton(context),
                Stack(
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 80,
                      width: SizeConfig.widthMultiplier * 78,
                      decoration: BoxDecoration(
                          color: primaryGreyyyy,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 78,
                      width: SizeConfig.widthMultiplier * 84,
                      decoration: BoxDecoration(
                          color: primaryGreyyy,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 76,
                      width: SizeConfig.widthMultiplier * 88,
                      padding:
                          EdgeInsets.only(left: SizeConfig.widthMultiplier * 2),
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          ),
                          // implement category_info and info_words
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 4,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  stateGame.selectedCategories[0].catProfImg,
                                  height: SizeConfig.heightMultiplier * 4.5,
                                ),
                                SizedBox(
                                  width: SizeConfig.widthMultiplier * 2,
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        stateGame.selectedCategories[0].catName,
                                        style: TextStyling.buttonTextStyleB,
                                      ),
                                      SizedBox(
                                          height: SizeConfig.heightMultiplier *
                                              0.3),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    1.2,
                                            width:
                                                SizeConfig.widthMultiplier * 35,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              child: LinearProgressIndicator(
                                                value: getPercentage200(
                                                        category: stateGame
                                                            .selectedCategories[0],
                                                        words: stateGame.words) /
                                                    100,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(yellowOrange),
                                                backgroundColor: grey,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: SizeConfig.widthMultiplier *
                                                1.5,
                                          ),
                                          Text(
                                            '${getPercentage200(category: stateGame.selectedCategories[0], words: stateGame.words)}/200',
                                            style: TextStyling
                                                .simpletitleTextStyleB,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: SizeConfig.heightMultiplier * 4,
                                  width: SizeConfig.widthMultiplier * 7,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: grey)),
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
                                  style: TextStyling.buttonTextStyleB,
                                ),
                              ],
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
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 2),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (stateGame.selectedGameWidgets.length ==
                                        (stateGame.selectedWidgetIndex + 1)) {
                                      showSnackBar(context,
                                          "Number of Game selected reached");
                                    } else {
                                      context
                                          .read<GamesHandlerCubit>()
                                          .increasePageIndex();
                                      BlocProvider.of<DataManipulationCubit>(
                                              context)
                                          .settingCategory(
                                              category: stateGame
                                                  .selectedCategories[0]);
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    }
                                  },
                                  child: Stack(
                                    clipBehavior: Clip.antiAlias,
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Container(
                                        height:
                                            SizeConfig.heightMultiplier * 12,
                                        width: SizeConfig.widthMultiplier * 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: buttonBlue,
                                            border: Border.all(
                                                color: primaryColor)),
                                      ),
                                      Container(
                                        height:
                                            SizeConfig.heightMultiplier * 11,
                                        width: SizeConfig.widthMultiplier * 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: primaryColor,
                                            border: Border.all(
                                                color: primaryColor)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.play_arrow,
                                              color: whiteColor,
                                              size:
                                                  SizeConfig.heightMultiplier *
                                                      4,
                                            ),
                                            Text(
                                              'Resume',
                                              style:
                                                  TextStyling.buttonTextStyle,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<GamesHandlerCubit>(context)
                                        .resetWordCategoriesScore(
                                            wordsList: words);
                                    BlocProvider.of<DataManipulationCubit>(
                                            context)
                                        .getData();
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: Stack(
                                    clipBehavior: Clip.antiAlias,
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Container(
                                        height: SizeConfig.heightMultiplier * 8,
                                        width: SizeConfig.widthMultiplier * 22,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: grey,
                                            border: Border.all(color: grey)),
                                      ),
                                      Container(
                                        height: SizeConfig.heightMultiplier * 7,
                                        width: SizeConfig.widthMultiplier * 22,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: whiteColor,
                                            border: Border.all(color: grey)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.refresh,
                                              color: primaryColor,
                                              size:
                                                  SizeConfig.heightMultiplier *
                                                      3,
                                            ),
                                            Text(
                                              'Reset',
                                              style: TextStyling
                                                  .buttonTextStyleBlue,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Stack(
                                  children: [
                                    Image.asset(
                                      stateGame
                                          .selectedCategories[0].catProfImg,
                                      height: SizeConfig.heightMultiplier * 12,
                                      // width: SizeConfig.widthMultiplier*24,
                                    ),
                                    Container(
                                      height: SizeConfig.heightMultiplier * 12,
                                      width: SizeConfig.widthMultiplier * 24,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.8)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: SizeConfig.heightMultiplier * 2),
                          Expanded(
                              child: BlocBuilder<DataManipulationCubit, DataManipulationState>(
                            builder: (context, stateUpdated) {
                              if(stateUpdated is DataManipulationInitial){
                                return Center(child: CircularProgressIndicator(),);
                              }else if(stateUpdated is DataManipulationError){
                                return Center(child: Text(stateUpdated.errorMessage,style: TextStyling.appBarTextB,),);
                              }else if(stateUpdated is GettingData){
                                 var staticWords = stateUpdated.staticWordsList.where((item) => item.categoryId==stateGame.selectedCategories[0].id).toList();
                                return ListView.builder(
                                  itemCount: staticWords.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal:
                                              SizeConfig.widthMultiplier * 4,
                                          vertical:
                                              SizeConfig.heightMultiplier *
                                                  1.2),
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              SizeConfig.widthMultiplier * 4,
                                          vertical:
                                              SizeConfig.heightMultiplier *
                                                  1.2),
                                      height: SizeConfig.heightMultiplier * 10,
                                      decoration: BoxDecoration(
                                          color: whiteColor,
                                          border: Border.all(color: grey),
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Image.asset(
                                              staticWords[index].imagePath,
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      4,
                                            ),
                                          ),
                                          SizedBox(
                                            width:
                                                SizeConfig.widthMultiplier * 4,
                                          ),
                                          Expanded(
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Text(
                                                staticWords[index].wordName,
                                                style: TextStyling
                                                    .buttonTextStyleB,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width:
                                                SizeConfig.widthMultiplier * 3,
                                          ),
                                          Container(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    1.2,
                                            width:
                                                SizeConfig.widthMultiplier * 30,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              child: LinearProgressIndicator(
                                                value: getPercentageDW20(
                                                    words:staticWords[index]),
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(yellowOrange),
                                                backgroundColor: grey,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: SizeConfig.widthMultiplier *
                                                1.5,
                                          ),
                                          Text(
                                            '${getPercentageW20(words: staticWords[index])}/10',
                                            style: TextStyling
                                                .simpletitleTextStyleB,
                                          ),
                                        ],
                                      ),
                                    );
                                  });
        
                              }
                              return Container();
                            },
                          )),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  _backButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<GamesHandlerCubit>(context).resetSelection();
          Navigator.pop(context);
          Navigator.pop(context);
          Navigator.pop(context);
        },
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
