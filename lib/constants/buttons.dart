import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/text_styling.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;

  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: buttonBlue,
            ),
          ),
          Container(
            height: SizeConfig.heightMultiplier * 6.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color:primaryColor,
            ),
            child: Center(
              child: Text(
                text!.toUpperCase(),
                style: TextStyling.buttonTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DefaultButtonGame extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;

  const DefaultButtonGame({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 9,
      child: GestureDetector(
        onTap: press,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 8.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: grey,
                  border: Border.all(color: grey)),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: whiteColor,
                  border: Border.all(color: grey)),
              child: Center(
                child: Text(text!.toUpperCase(),
                    style: TextStyling.buttonTextStyleB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultButtonGameChecked extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;

  const DefaultButtonGameChecked({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 9,
      child: GestureDetector(
        onTap: press,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 8.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                  border: Border.all(color: primaryColor)),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: whiteColor,
                  border: Border.all(color: primaryColor)),
              child: Center(
                child: Text(text!.toUpperCase(),
                    style: TextStyling.buttonTextStyleB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultButtonGameAll extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;

  const DefaultButtonGameAll({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 9,
      child: GestureDetector(
        onTap: press,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                  border: Border.all(color: primaryColor)),
              child: Center(
                child: Text(text!.toUpperCase(),
                    style: TextStyling.buttonTextStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
