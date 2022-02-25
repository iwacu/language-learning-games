import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_learning_game/aap_config/appConfig.dart';
import 'package:language_learning_game/constants/calculations.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';

class CustomAppBar extends PreferredSize {
  @override
  final Widget child;
  final double height;

  CustomAppBar({
    required this.height,
    required this.child,
  }) : super(child: child, preferredSize: Size.fromHeight(height));

  @override
  Widget build(BuildContext context) => child;
}

appBar(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: homeColor,
        border: Border(bottom: BorderSide(color: primaryColor))),
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 6,
              width: SizeConfig.widthMultiplier * 10,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: whiteColor),
              child: Center(
                child: Image.asset(
                  Images.crownIcon,
                  height: SizeConfig.heightMultiplier * 2.8,
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 2,
            ),
            Text(
              '3 Crowns',
              style: TextStyling.simpleText,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 3,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 6,
              width: SizeConfig.widthMultiplier * 10,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: whiteColor),
              child: Center(
                child: Image.asset(
                  Images.fireIcon,
                  height: SizeConfig.heightMultiplier * 2.8,
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 2,
            ),
            Text(
              '0 Streak',
              style: TextStyling.simpleText,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: SizeConfig.heightMultiplier * 6,
                width: SizeConfig.widthMultiplier * 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                    image: DecorationImage(
                        image: AssetImage(
                      AppConfig.instance.appValue == AppValue.korean
                          ? Images.sKoreaFlag
                          : Images.spanishFlag,
                    ))),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

appBarGame(BuildContext context) {
  return BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
    builder: (context, stateGame) {
      return Container(
        decoration: BoxDecoration(
            color: homeColor,
            border: Border(bottom: BorderSide(color: primaryColor))),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<GamesHandlerCubit>(context).resetSelection();
                    Navigator.pop(context);},
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
                        height: SizeConfig.heightMultiplier * 4,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 3,
                  width: SizeConfig.widthMultiplier * 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: getPercentage20(
                              category: stateGame.selectedCategories[0],
                              words: stateGame.words) /
                          100,
                      valueColor: AlwaysStoppedAnimation<Color>(yellowOrange),
                      backgroundColor: whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 10,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      Images.fireIcon,
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text(
                  '3',
                  style: TextStyling.appBarTextY,
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 10,
                  decoration:
                      BoxDecoration(color: whiteColor, shape: BoxShape.circle),
                  child: Center(
                    child: Image.asset(
                      Images.appBarHeart,
                      height: SizeConfig.heightMultiplier * 3,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text(
                  '5',
                  style: TextStyling.appBarTextR,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

appBarDialog(BuildContext context) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
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
                  height: SizeConfig.heightMultiplier * 4,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

appBarProfile(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: homeColor,
        border: Border(bottom: BorderSide(color: primaryColor))),
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Profile',
              style: TextStyling.aappBarTextBProfileW,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 6,
              width: SizeConfig.widthMultiplier * 10,
              decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: grey)),
              child: Center(
                child: SvgPicture.asset(
                  Images.settingsIcon,
                  height: SizeConfig.heightMultiplier * 3,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
