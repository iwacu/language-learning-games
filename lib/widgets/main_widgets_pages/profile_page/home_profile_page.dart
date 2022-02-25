import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';

class HomeProfilePage extends StatelessWidget {
  const HomeProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Center(
          child: Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 28,
                width: SizeConfig.widthMultiplier * 36,
                decoration:
                    BoxDecoration(color: whiteColor, shape: BoxShape.circle),
                child: Center(
                  child: Container(
                    height: SizeConfig.heightMultiplier * 24,
                    width: SizeConfig.widthMultiplier * 32,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Images.profilePicture),
                            fit: BoxFit.contain),
                        shape: BoxShape.circle),
                  ),
                ),
              ),
              Positioned(
                  top: SizeConfig.heightMultiplier * 3,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 8,
                    width: SizeConfig.widthMultiplier * 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: yellowOrange,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        Images.camerIcon,
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                    ),
                  ))
            ],
          ),
        ),
        Center(
            child: Text(
          'Jennifer John',
          style: TextStyling.titleTextStyle,
        )),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.2,
        ),
        Center(
            child: Text(
          'Joins on December 2011',
          style: TextStyling.simpletitleTextStyle,
        )),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6),
          child: Divider(
            thickness: 0.6,
            color: whiteColor,
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Center(
            child: Text(
          'Statistics',
          style: TextStyling.titleTextStyle,
        )),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.heightMultiplier * 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: SizeConfig.heightMultiplier * 20,
                width: SizeConfig.widthMultiplier * 30,
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: SizeConfig.heightMultiplier * 6,
                        width: SizeConfig.widthMultiplier * 10,
                        decoration: BoxDecoration(
                          color: homeColorLight,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            Images.fireIcon,
                            height: SizeConfig.heightMultiplier * 3,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '5',
                      style: TextStyling.titleTextStyleB,
                    ),
                    Text(
                      'Days \nStreak',
                      style: TextStyling.simpletitleTextStyleGrey,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: SizeConfig.heightMultiplier * 20,
                width: SizeConfig.widthMultiplier * 30,
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: SizeConfig.heightMultiplier * 6,
                        width: SizeConfig.widthMultiplier * 10,
                        decoration: BoxDecoration(
                          color: homeColorLight,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            Images.crownIcon,
                            height: SizeConfig.heightMultiplier * 3,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '10',
                      style: TextStyling.titleTextStyleB,
                    ),
                    Text(
                      'Crown \nWin',
                      style: TextStyling.simpletitleTextStyleGrey,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: SizeConfig.heightMultiplier * 20,
                width: SizeConfig.widthMultiplier * 30,
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: SizeConfig.heightMultiplier * 6,
                        width: SizeConfig.widthMultiplier * 10,
                        decoration: BoxDecoration(
                          color: homeColorLight,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            Images.fireIcon,
                            height: SizeConfig.heightMultiplier * 3,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '7',
                      style: TextStyling.titleTextStyleB,
                    ),
                    Text(
                      'Level \nAchieved',
                      style: TextStyling.simpletitleTextStyleGrey,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
