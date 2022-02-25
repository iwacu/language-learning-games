import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/words_list.dart';

import '../../../constants/app_bar.dart';

class TrueAndFalseGamePracticePage extends StatefulWidget {
  final Categories categories;
  final List<WordsList> words;
  const TrueAndFalseGamePracticePage(
      {Key? key, required this.categories, required this.words})
      : super(key: key);

  @override
  State<TrueAndFalseGamePracticePage> createState() =>
      _TrueAndFalseGamePracticePageState();
}

class _TrueAndFalseGamePracticePageState
    extends State<TrueAndFalseGamePracticePage> {
  int _selectedIndex=0;
  bool _right = true;
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CustomAppBar(
          height: SizeConfig.heightMultiplier * 9, child: appBarGame(context)),
      body: Container(
        height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [homeColor, homeColorLight])),
        child: ListView(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 5,
                  width: SizeConfig.widthMultiplier * 8,
                  child: Center(
                    child: Image.asset(
                      widget.categories.catProfImg,
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text(
                  widget.categories.catName,
                  style: TextStyling.appBarTextR,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Center(
              child: Text(
                'Select Correct Choice',
                style: TextStyling.titleTextStyle,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Center(
              child: Image.asset(
                widget.words[_selectedIndex].imagePath,
                height: SizeConfig.heightMultiplier * 32,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    await player.setAsset(widget.words[_selectedIndex].audioPath);
                    await player.play();
                  },
                  child: Container(
                    height: SizeConfig.heightMultiplier * 5,
                    width: SizeConfig.widthMultiplier * 10,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: SvgPicture.asset(
                        Images.soundIcon,
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text(
                  widget.words[_selectedIndex].originWordName,
                  style: TextStyling.appBarTextW,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Center(
              child: GestureDetector(
                onTap: (){
                  if((_selectedIndex+1) == widget.words.length){
                   Navigator.of(context).pushNamed('/correct_answer_practice',
                              arguments: {'category': widget.categories});
                  }else {
                      context.read<GamesHandlerCubit>().updateScore(
                              wordsList: WordsList(
                                  id: widget.words[_selectedIndex].id,
                                  color: widget.words[_selectedIndex].color,
                                  wordName: widget.words[_selectedIndex].wordName,
                                  originWordName: widget.words[_selectedIndex].originWordName,
                                  audioPath: widget.words[_selectedIndex].audioPath,
                                  imagePath: widget.words[_selectedIndex].imagePath,
                                  categoryId: widget.words[_selectedIndex].categoryId,
                                  catScore: (widget.words[_selectedIndex].catScore + 1)),
                              categories: Categories(
                                  id: widget.categories.id,
                                  catUserid: widget.categories.catUserid,
                                  catOpened: widget.categories.catOpened,
                                  catName: widget.categories.catName,
                                  catProfImg: widget.categories.catProfImg,
                                  catBadge: widget.categories.catBadge,
                                  catPercentage: widget.categories.catPercentage,
                                  catColor: widget.categories.catColor,
                                  route: widget.categories.route,
                                  catScore: (widget.categories.catScore + 1)));
                   
                    setState(() {
              _selectedIndex++;
                });
                  }
                },
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 13.5,
                      width: SizeConfig.widthMultiplier * 30,
                      decoration: BoxDecoration(
                          //  shape: BoxShape.circle, border: Border.all(color: grey)),
                          color: _right ? green : grey,
                          border: Border.all(color: _right ? green : grey),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 13,
                      width: SizeConfig.widthMultiplier * 30,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          //  shape: BoxShape.circle, border: Border.all(color: grey)),
                          border: Border.all(color: _right ? primaryColor : grey),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Container(
                        height: SizeConfig.heightMultiplier * 8,
                        width: SizeConfig.widthMultiplier * 16,
                        decoration: BoxDecoration(
                          color: _right ? green : whiteColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: _right ? green : grey),
                        ),
                        child: Center(
                          child: Image.asset(
                            Images.right,
                            height: SizeConfig.heightMultiplier * 4,
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 4,
            ),
            
          ],
        ),
      ),
    );
  }
}
