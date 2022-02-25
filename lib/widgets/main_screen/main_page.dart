import 'package:language_learning_game/constants/app_bar.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/data_text.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(
          height: SizeConfig.heightMultiplier * 9,
          child:
              _selectedIndex == 2 ? appBarProfile(context) : appBar(context)),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              homeColor,
              homeColorLight,
            ])),
        child: IndexedStack(
          index: _selectedIndex,
          children: DataText.mainWidgets,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _selectedIndex==0 ? GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/choose_game'),
        child: Stack(
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 8,
                      width: SizeConfig.widthMultiplier * 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: buttonBlue,
                          border: Border.all(color: primaryColor)),
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 7.2,
                      width: SizeConfig.widthMultiplier * 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: primaryColor,
                          border: Border.all(color: primaryColor)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: whiteColor,
                          ),
                          Text(
                            'PLAY',
                            style: TextStyling.buttonTextStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
      ):Container(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
              backgroundColor: whiteColor,
              selectedLabelStyle: TextStyling.bottomNavSelectedTextStyle,
              unselectedLabelStyle: TextStyling.bottomNavUnSelectedTextStyle,
              currentIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Images.homeWhiteSvgIcon,
                      color: _selectedIndex == 0 ? primaryColor : grey,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Images.crownWhitesvgIcon,
                      color: _selectedIndex == 1 ? primaryColor : grey,
                    ),
                    label: "LeaderBoard"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Images.profileWhiteSvg,
                      color: _selectedIndex == 2 ? primaryColor : grey,
                    ),
                    label: "Profile"),
              ]),
        ),
      ),
    );
  }
}
