import 'package:flutter/material.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';

class OnBoardingContent extends StatelessWidget {
  final String? title, image;
  const OnBoardingContent({
    Key? key,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'LANGUAGE \nGAME',
          textAlign: TextAlign.center,
          style: TextStyling.titleTextStyle,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        Image.asset(
          image!,
          height: SizeConfig.imageSizeMultiplier * 74,
          width: SizeConfig.imageSizeMultiplier * 74,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        Text(
          title!,
          textAlign: TextAlign.center,
          style: TextStyling.titleStyle,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
      ],
    );
  }
}
