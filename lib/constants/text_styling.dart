import 'package:flutter/material.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';

class TextStyling {
  TextStyling._();
  static final TextStyle titleStyle = TextStyle(
      color: whiteColor, fontFamily: 'Montserrat', fontWeight: FontWeight.bold);
  static final TextStyle buttonTextStyle = TextStyle(
      color: whiteColor, fontFamily: 'Montserrat', fontWeight: FontWeight.bold);
  static final TextStyle buttonTextStyleBlue = TextStyle(
      color: primaryColor, fontFamily: 'Montserrat', fontWeight: FontWeight.bold);
  
  static final TextStyle buttonTextStyleB = TextStyle(
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      fontSize: SizeConfig.textMultiplier * 2);
  static final TextStyle titleTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 3,
      color: whiteColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle titleTextStyleB = TextStyle(
      fontSize: SizeConfig.textMultiplier * 3,
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle stitleTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: whiteColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle simpletitleTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.5,
      color: whiteColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static final TextStyle simpletitleTextStyleB = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.5,
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static final TextStyle simpletitleTextStyleGrey = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.8,
      color: Colors.black38,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static final TextStyle containerTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle bottomNavSelectedTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: primaryColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle bottomNavUnSelectedTextStyle = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2,
    color: grey,
    fontFamily: 'Montserrat',
  );

  static final TextStyle simpleText = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: whiteColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle sSimpleText = TextStyle(
      fontSize: SizeConfig.textMultiplier * 1.5,
      color: whiteColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle appBarTextY = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: yellowOrange,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static final TextStyle appBarTextR = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: redOrange,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static final TextStyle appBarTextB = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2.4,
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
    static final TextStyle appBarTextW = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2.4,
      color: whiteColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle appBarTextBB = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
        static final TextStyle appBarTextSB = TextStyle(
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
    static final TextStyle appBarTextGB = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);
  static final TextStyle aappBarTextB = TextStyle(
      decoration: TextDecoration.none,
      fontSize: SizeConfig.textMultiplier * 2.4,
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle aappBarTextBProfile = TextStyle(
      decoration: TextDecoration.none,
      fontSize: SizeConfig.textMultiplier * 3,
      color: blackColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle aappBarTextBProfileW = TextStyle(
      decoration: TextDecoration.none,
      fontSize: SizeConfig.textMultiplier * 3,
      color: whiteColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle answerCorrectTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 3,
      color: green,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle drpDwnTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2,
      color: primaryColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle answerWrongTextStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier * 2.5,
      color: redGrey,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);

  static final TextStyle levelComplete1 = TextStyle(
      fontSize: SizeConfig.textMultiplier * 3,
      color: redOrangeGryF,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static final TextStyle levelComplete2 = TextStyle(
      fontSize: SizeConfig.textMultiplier * 3,
      color: greenLight,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
}
