import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_learning_game/constants/animations_c.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/offsets.dart';
import 'package:language_learning_game/models/words_list.dart';
import 'package:language_learning_game/services/database/database_helper.dart';

import 'line_paints/square_painter.dart';

class HomeSquareMatching extends StatefulWidget {
  const HomeSquareMatching({Key? key}) : super(key: key);

  @override
  _HomeSquareMatchingState createState() => _HomeSquareMatchingState();
}

class _HomeSquareMatchingState extends State<HomeSquareMatching> {
  final List<GlobalKey<ShakeWidgetState>> shakeKey =
      List.generate(10, (index) => GlobalKey<ShakeWidgetState>());
  List<WordsList> _wordSelected = [];
  List<OffSets> offSets = [];
  double x1 = 0.0;
  double x2 = 0.0;
  double y1 = 0.0;
  double y2 = 0.0;
  int? from;
  int? to;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
      builder: (context, stateGame) {
        var res = stateGame.selectedWord8.getRange(0, 8).toList();
        List<WordsList> data1 = [];
        List<WordsList> data2 = [];
        res.forEach((element) {
          data1.add(element);
        });
        data2 = data1.reversed.toList();
        data2.sort(
            (a, b) => a.wordName.toString().compareTo(b.wordName.toString()));
        return ListView(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
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
                      stateGame.categories[0].catProfImg,
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 1.5,
                ),
                Text(
                  stateGame.categories[0].catName,
                  style: TextStyling.buttonTextStyleB,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Center(
              child: Text(
                'Match Word With Image',
                style: TextStyling.titleTextStyle,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 2),
              child: CustomPaint(
                painter: SquarePainter(offSets: offSets),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        children: data1.asMap().entries.map((item) {
                      var key = item.key;
                      var value = item.value;
                      return Padding(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.heightMultiplier * 1.2),
                        child: Draggable(
                          data: value,
                          onDragStarted: () {
                            switch (key) {
                              case 0:
                                {
                                  from = key;
                                  x1 = 1 / 3.5;
                                  y1 = 16;
                                }
                                break;
                              case 1:
                                {
                                  from = key;
                                  x1 = 1 / 3.5;
                                  y1 = 5.7;
                                }
                                break;
                              case 2:
                                {
                                  from = key;
                                  x1 = 1 / 3.5;
                                  y1 = 3.3;
                                }
                                break;
                              case 3:
                                {
                                  from = key;
                                  x1 = 1 / 3.5;
                                  y1 = 2.3;
                                }
                                break;
                              case 4:
                                {
                                  from = key;
                                  x1 = 1 / 3.5;
                                  y1 = 1.8;
                                }
                                break;
                              case 5:
                                {
                                  from = key;
                                  x1 = 1 / 3.5;
                                  y1 = 1.48;
                                }
                                break;
                              case 6:
                                {
                                  from = key;
                                  x1 = 1 / 3.5;
                                  y1 = 1.25;
                                }
                                break;
                              case 7:
                                {
                                  from = key;
                                  x1 = 1 / 3.5;
                                  y1 = 1.08;
                                }
                                break;
                              default:
                            }
                          },
                          childWhenDragging: Stack(
                            clipBehavior: Clip.antiAlias,
                            children: [
                              Container(
                                height: SizeConfig.heightMultiplier * 8,
                                width: SizeConfig.widthMultiplier * 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(int.parse(value.color))),
                              ),
                              Container(
                                height: SizeConfig.heightMultiplier * 7.5,
                                width: SizeConfig.widthMultiplier * 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: whiteColor),
                                child: Center(
                                  child: Text(
                                    value.originWordName,
                                    textAlign: TextAlign.center,
                                    style: TextStyling.appBarTextB,
                                  ),
                                ),
                              ),
                              Container(
                                height: SizeConfig.heightMultiplier * 8,
                                width: SizeConfig.widthMultiplier * 26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black38.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                          feedback: Stack(
                            clipBehavior: Clip.antiAlias,
                            children: [
                              Container(
                                height: SizeConfig.heightMultiplier * 8,
                                width: SizeConfig.widthMultiplier * 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(int.parse(value.color))),
                              ),
                              Container(
                                height: SizeConfig.heightMultiplier * 7.5,
                                width: SizeConfig.widthMultiplier * 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: whiteColor),
                                child: Center(
                                  child: Text(
                                    value.originWordName,
                                    textAlign: TextAlign.center,
                                    style: TextStyling.aappBarTextB,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          child: Stack(
                            clipBehavior: Clip.antiAlias,
                            children: [
                              Container(
                                height: SizeConfig.heightMultiplier * 8,
                                width: SizeConfig.widthMultiplier * 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: _wordSelected.contains(value)
                                        ? Color(int.parse(value.color))
                                        : grey),
                              ),
                              Container(
                                height: SizeConfig.heightMultiplier * 7.5,
                                width: SizeConfig.widthMultiplier * 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: whiteColor),
                                child: Center(
                                  child: Text(
                                    value.originWordName,
                                    textAlign: TextAlign.center,
                                    style: TextStyling.appBarTextBB,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList()),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 20,
                    ),
                    Column(
                      children: data2.asMap().entries.map((item) {
                        var key = item.key;
                        var value = item.value;
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.heightMultiplier * 1.2),
                          child: DragTarget<WordsList>(
                            onWillAccept: (receiVedItem) => true,
                            onAccept: (receiVedItem) {
                              if (value.id == receiVedItem.id) {
                                switch (key) {
                                  case 0:
                                    {
                                      OffSets list;
                                      x2 = 1 / 1.61;
                                      y2 = 16;
                                      to = key;
                                      list = OffSets(
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color,
                                          from: from!,
                                          to: to!);
                                      setState(() {
                                        _wordSelected.add(value);
                                        addScore(
                                            words: value,
                                            categories:
                                                stateGame.categories[0]);
                                        offSets.add(list);
                                      });
                                    }
                                    break;
                                  case 1:
                                    {
                                      OffSets list;
                                      x2 = 1 / 1.29;
                                      y2 = 5.5;
                                      to = key;
                                      list = OffSets(
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color,
                                          from: from!,
                                          to: to!);
                                      setState(() {
                                        _wordSelected.add(value);
                                        addScore(
                                            words: value,
                                            categories:
                                                stateGame.categories[0]);
                                        offSets.add(list);
                                      });
                                    }
                                    break;
                                  case 2:
                                    {
                                      OffSets list;
                                      x2 = 1 / 1.61;
                                      y2 = 3.3;
                                      to = key;
                                      list = OffSets(
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color,
                                          from: from!,
                                          to: to!);
                                      setState(() {
                                        _wordSelected.add(value);
                                        addScore(
                                            words: value,
                                            categories:
                                                stateGame.categories[0]);
                                        offSets.add(list);
                                      });
                                    }
                                    break;
                                  case 3:
                                    {
                                      OffSets list;
                                      x2 = 1 / 1.29;
                                      y2 = 2.3;
                                      to = key;
                                      list = OffSets(
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color,
                                          from: from!,
                                          to: to!);
                                      setState(() {
                                        _wordSelected.add(value);
                                        addScore(
                                            words: value,
                                            categories:
                                                stateGame.categories[0]);
                                        offSets.add(list);
                                      });
                                    }
                                    break;
                                  case 4:
                                    {
                                      OffSets list;
                                      x2 = 1 / 1.61;
                                      y2 = 1.8;
                                      to = key;
                                      list = OffSets(
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color,
                                          from: from!,
                                          to: to!);
                                      setState(() {
                                        _wordSelected.add(value);
                                        addScore(
                                            words: value,
                                            categories:
                                                stateGame.categories[0]);
                                        offSets.add(list);
                                      });
                                    }
                                    break;
                                  case 5:
                                    {
                                      OffSets list;
                                      x2 = 1 / 1.29;
                                      y2 = 1.48;
                                      to = key;
                                      list = OffSets(
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color,
                                          from: from!,
                                          to: to!);
                                      setState(() {
                                        _wordSelected.add(value);
                                        addScore(
                                            words: value,
                                            categories:
                                                stateGame.categories[0]);
                                        offSets.add(list);
                                      });
                                    }
                                    break;
                                  case 6:
                                    {
                                      OffSets list;
                                      x2 = 1 / 1.61;
                                      y2 = 1.25;
                                      to = key;
                                      list = OffSets(
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color,
                                          from: from!,
                                          to: to!);
                                      setState(() {
                                        _wordSelected.add(value);
                                        addScore(
                                            words: value,
                                            categories:
                                                stateGame.categories[0]);
                                        offSets.add(list);
                                      });
                                    }
                                    break;
                                  case 7:
                                    {
                                      OffSets list;
                                      x2 = 1 / 1.29;
                                      y2 = 1.08;
                                      to = key;
                                      list = OffSets(
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color,
                                          from: from!,
                                          to: to!);
                                      setState(() {
                                        _wordSelected.add(value);
                                        addScore(
                                            words: value,
                                            categories:
                                                stateGame.categories[0]);
                                        offSets.add(list);
                                      });
                                    }
                                    break;

                                  default:
                                    break;
                                }
                              } else {
                                return shakeKey[key].currentState?.shake();
                              }
                            },
                            builder: (context, acceptedItem, rejectedItem) {
                              return Transform.translate(
                                transformHitTests: false,
                                offset: Offset(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: key.isOdd
                                          ? SizeConfig.widthMultiplier * 30
                                          : 0.0),
                                  child: ShakeWidget(
                                    key: shakeKey[key],
                                    shakeCount: 3,
                                    shakeOffset: 10,
                                    shakeDuration: Duration(milliseconds: 500),
                                    child: Stack(
                                      clipBehavior: Clip.antiAlias,
                                      children: [
                                        Container(
                                          height:
                                              SizeConfig.heightMultiplier * 8,
                                          width:
                                              SizeConfig.widthMultiplier * 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: _wordSelected
                                                      .contains(value)
                                                  ? Color(
                                                      int.parse(value.color))
                                                  : grey),
                                        ),
                                        Container(
                                          height:
                                              SizeConfig.heightMultiplier * 7.5,
                                          width:
                                              SizeConfig.widthMultiplier * 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: whiteColor),
                                          child: Center(
                                            child: Image.asset(
                                              value.imagePath,
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void addScore({WordsList? words, Categories? categories}) async {
    if (_wordSelected.length == 8) {
      var wordd = WordsList(
          id: words!.id,
          color: words.color,
          wordName: words.wordName,
          audioPath: words.audioPath,
          originWordName: words.originWordName,
          imagePath: words.imagePath,
          categoryId: words.categoryId,
          catScore: (words.catScore + 5));
      var catgry = Categories(
          id: categories!.id,
          catUserid: categories.catUserid,
          catOpened: categories.catOpened,
          catName: categories.catName,
          catProfImg: categories.catProfImg,
          catBadge: categories.catBadge,
          catPercentage: categories.catPercentage,
          catColor: categories.catColor,
          route: categories.route,
          catScore: (categories.catScore + 5));
     BlocProvider.of<GamesHandlerCubit>(context).updateScore(
         wordsList: wordd,categories: catgry
       );
      Navigator.of(context)
          .pushNamed('/correct_answer', arguments: {'category': categories});
    } else {
      var wordd = WordsList(
          id: words!.id,
          color: words.color,
          wordName: words.wordName,
          audioPath: words.audioPath,
          imagePath: words.imagePath,
          originWordName: words.originWordName,
          categoryId: words.categoryId,
          catScore: (words.catScore + 5));
      var catgry = Categories(
          id: categories!.id,
          catUserid: categories.catUserid,
          catOpened: categories.catOpened,
          catName: categories.catName,
          catProfImg: categories.catProfImg,
          catBadge: categories.catBadge,
          catPercentage: categories.catPercentage,
          catColor: categories.catColor,
          route: categories.route,
          catScore: (categories.catScore + 5));
     BlocProvider.of<GamesHandlerCubit>(context).updateScore(
         wordsList: wordd,categories: catgry
       );
    }
  }
}
