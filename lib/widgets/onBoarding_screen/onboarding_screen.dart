import 'package:flutter/material.dart';
import 'package:language_learning_game/constants/animation.dart';
import 'package:language_learning_game/constants/buttons.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/data_text.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/widgets/onBoarding_screen/onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 12,
                            vertical: SizeConfig.heightMultiplier * 4),
                        child: DefaultButton(
                          text: 'play now',
                          press: () =>
                              Navigator.of(context).pushNamed('/main_page'),
                        ),
                      ),
                    ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [primaryColorGreyy, primaryColorGrey])),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 4,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier*68,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      _currentPage = value;
                    });
                  },
                  itemCount: DataText.onBoardingTexts.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                    title: DataText.onBoardingTexts[index]['title'],
                    image: DataText.onBoardingTexts[index]['image'],
                  ),
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  DataText.onBoardingTexts.length,
                  (index) => buildDot(index: index),
                ),
              ),
              
             
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 20 : 15,
      decoration: BoxDecoration(
        color: _currentPage == index ? whiteColor : whiteGreyColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
