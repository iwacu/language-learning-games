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
import 'package:language_learning_game/widgets/game_pages/match_images/line_paints/circle_painter.dart';

class HomeMatchCircles extends StatefulWidget {
  const HomeMatchCircles({Key? key}) : super(key: key);

  @override
  _HomeMatchCirclesState createState() => _HomeMatchCirclesState();
}

class _HomeMatchCirclesState extends State<HomeMatchCircles> {
  double x1 = 0.0;
  double x2 = 0.0;
  double y1 = 0.0;
  double y2 = 0.0;

  List<WordsList> _wordds = [];
  int? from;
  int? to;
  double x1Selected = 0.0;
  double y1Selected = 0.0;

  List<OffSets> offSets = [];
  final List<GlobalKey<ShakeWidgetState>> shakeKey =
      List.generate(4, (index) => GlobalKey<ShakeWidgetState>());
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
      builder: (context, stateGame) {
        var res = stateGame.selectedWord4.getRange(0, 4).toList();
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
                      stateGame.categories[0].catProfImg,
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Text(
                  stateGame.categories[0].catName,
                  style: TextStyling.buttonTextStyleB,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Center(
              child: Text(
                'Match Word With Image',
                style: TextStyling.titleTextStyle,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomPaint(
                painter: CircleLinePainter(offSets: offSets),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        children: data1.asMap().entries.map((item) {
                      var key = item.key;
                      var value = item.value;
                      return Draggable(
                        data: value,
                        onDragStarted: () {
                          switch (key) {
                            case 0:
                              {
                                setState(() {
                                  x1Selected = (1 / 3);
                                  y1Selected = 8;

                                  from = key;
                                });
                              }
                              break;
                            case 1:
                              {
                                setState(() {
                                  x1Selected = (1 / 3);
                                  y1Selected = 2.8;
                                  from = key;
                                });
                              }
                              break;
                            case 2:
                              {
                                setState(() {
                                  x1Selected = (1 / 3);
                                  y1Selected = 1.65;
                                  from = key;
                                });
                              }
                              break;
                            case 3:
                              {
                                setState(() {
                                  x1Selected = (1 / 3);
                                  y1Selected = 1.18;
                                  from = key;
                                });
                              }
                              break;
                            default:
                          }
                        },
                        childWhenDragging: Stack(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              height: SizeConfig.heightMultiplier * 16,
                              width: SizeConfig.widthMultiplier * 26,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(int.parse(value.color))),
                            ),
                            Container(
                              height: SizeConfig.heightMultiplier * 15,
                              width: SizeConfig.widthMultiplier * 26,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: whiteColor),
                              child: Center(
                                child: Text(
                                  value.originWordName,
                                  textAlign: TextAlign.center,
                                  style: TextStyling.appBarTextB,
                                ),
                              ),
                            ),
                            Container(
                              height: SizeConfig.heightMultiplier * 16,
                              width: SizeConfig.widthMultiplier * 26,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black38.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        feedback: Stack(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              height: SizeConfig.heightMultiplier * 16,
                              width: SizeConfig.widthMultiplier * 26,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(int.parse(value.color))),
                            ),
                            Container(
                              height: SizeConfig.heightMultiplier * 15,
                              width: SizeConfig.widthMultiplier * 26,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: whiteColor),
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
                              height: SizeConfig.heightMultiplier * 16,
                              width: SizeConfig.widthMultiplier * 26,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _wordds.contains(value)
                                      ? Color(int.parse(value.color))
                                      : grey),
                            ),
                            Container(
                              height: SizeConfig.heightMultiplier * 15,
                              width: SizeConfig.widthMultiplier * 26,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: whiteColor),
                              child: Center(
                                child: Text(
                                  value.originWordName,
                                  textAlign: TextAlign.center,
                                  style: TextStyling.appBarTextB,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList()),
                    Spacer(),
                    Column(
                      children: data2.asMap().entries.map((item) {
                        var key = item.key;
                        var value = item.value;
                        return DragTarget<WordsList>(
                          onWillAccept: (receiVedItem) => true,
                          onAccept: (receiVedItem) {
                            if (value.id == receiVedItem.id) {
                              switch (key) {
                                case 0:
                                  {
                                    OffSets list;
                                    x1 = x1Selected;
                                    x2 = (2.09 / 3.2);
                                    y1 = y1Selected;
                                    y2 = 8;

                                    list = OffSets(
                                      from: from!,
                                      to: key,
                                      x1: x1,
                                      x2: x2,
                                      y1: y1,
                                      y2: y2,
                                      color: value.color,
                                    );
                                    setState(() {
                                      _wordds.add(value);
                                      offSets.add(list);
                                    });
                                    addScore(
                                        words: value,
                                        categories: stateGame.categories[0]);
                                  }
                                  break;
                                case 1:
                                  {
                                    x1 = x1Selected;
                                    x2 = (2.09 / 3.2);
                                    y1 = y1Selected;
                                    y2 = 2.8;
                                    setState(() {
                                      _wordds.add(value);
                                      offSets.add(OffSets(
                                          from: from!,
                                          to: key,
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color));
                                    });
                                    addScore(
                                        words: value,
                                        categories: stateGame.categories[0]);
                                  }
                                  break;
                                case 2:
                                  {
                                    x1 = x1Selected;
                                    x2 = (2.09 / 3.2);
                                    y1 = y1Selected;
                                    y2 = 1.65;
                                    setState(() {
                                      _wordds.add(value);
                                      offSets.add(OffSets(
                                          from: from!,
                                          to: key,
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color));
                                    });
                                    addScore(
                                        words: value,
                                        categories: stateGame.categories[0]);
                                  }
                                  break;
                                case 3:
                                  {
                                    x1 = x1Selected;
                                    x2 = (2.09 / 3.2);
                                    y1 = y1Selected;
                                    y2 = 1.18;
                                    setState(() {
                                      _wordds.add(value);
                                      offSets.add(OffSets(
                                          from: from!,
                                          to: key,
                                          x1: x1,
                                          x2: x2,
                                          y1: y1,
                                          y2: y2,
                                          color: value.color));
                                    });
                                    addScore(
                                        words: value,
                                        categories: stateGame.categories[0]);
                                  }
                                  break;
                                default:
                              }
                            } else {
                              return shakeKey[key].currentState?.shake();
                            }
                          },
                          builder: (context, acceptedItem, rejectedItem) {
                            return ShakeWidget(
                              key: shakeKey[key],
                              shakeCount: 3,
                              shakeOffset: 10,
                              shakeDuration: Duration(milliseconds: 500),
                              child: Stack(
                                clipBehavior: Clip.antiAlias,
                                children: [
                                  Container(
                                    height: SizeConfig.heightMultiplier * 16,
                                    width: SizeConfig.widthMultiplier * 26,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _wordds.contains(value)
                                            ? Color(int.parse(value.color))
                                            : grey),
                                  ),
                                  Container(
                                    height: SizeConfig.heightMultiplier * 15,
                                    width: SizeConfig.widthMultiplier * 26,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: whiteColor),
                                    child: Center(
                                      child: Image.asset(
                                        value.imagePath,
                                        height: SizeConfig.heightMultiplier * 5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void addScore({WordsList? words, Categories? categories}) async {
    if (_wordds.length == 4) {
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
      // await DatabaseHelper.instance.updateCategoryScore(catgry);
      // await DatabaseHelper.instance.updateScore(wordd);
      BlocProvider.of<GamesHandlerCubit>(context)
          .updateScore(wordsList: wordd, categories: catgry);
      // BlocProvider.of<DataManipulationCubit>(context).getData();
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
      BlocProvider.of<GamesHandlerCubit>(context)
          .updateScore(wordsList: wordd, categories: catgry);
      // BlocProvider.of<DataManipulationCubit>(context).getData();
    }
  }
}
