import 'package:flutter/material.dart';
import 'package:language_learning_game/constants/buttons.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';

class WrongAnswer extends StatelessWidget {
  const WrongAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.bgImage), fit: BoxFit.cover)),
      child: Center(
        child: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 54,
              width: SizeConfig.widthMultiplier * 68,
              decoration: BoxDecoration(
                  color: primaryGreyyyy,
                  borderRadius: BorderRadius.circular(50)),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 52,
              width: SizeConfig.widthMultiplier * 74,
              decoration: BoxDecoration(
                  color: primaryGreyyy,
                  borderRadius: BorderRadius.circular(40)),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 50,
              width: SizeConfig.widthMultiplier * 78,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(22)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 22,
                    width: SizeConfig.widthMultiplier * 30,
                    decoration: BoxDecoration(
                      color: redGrey,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        Images.cancelBig,
                        height: SizeConfig.heightMultiplier * 10,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Text(
                    'Incorrect Try Again!',
                    style: TextStyling.answerWrongTextStyle,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 8),
                    child: DefaultButtonGameAll(
                      text: 'Back',
                      press: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
