import 'package:language_learning_game/constants/calculations.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/constants/skelton.dart';
import 'package:language_learning_game/constants/text_styling.dart';
import 'package:language_learning_game/cubit/data_manipulation/data_manipulation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:language_learning_game/widgets/main_widgets_pages/home_page/line_progress_indicator_painter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LineProgress(),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          ListView(
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Stack(
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    Images.mainUpImg,
                    height: SizeConfig.heightMultiplier * 6,
                  ),
                  Text(
                    'Level 01',
                    style: TextStyling.simpleText,
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              BlocBuilder<DataManipulationCubit, DataManipulationState>(
                builder: (context, state) {
                  if (state is DataManipulationInitial) {
                    return _builLoadingShimmer();
                  } else if (state is GettingData) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: GridView.builder(
                          padding: EdgeInsets.only(
                            bottom: SizeConfig.heightMultiplier * 6,
                          ),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: state.categories.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing:
                                      SizeConfig.heightMultiplier * 2,
                                  crossAxisSpacing:
                                      SizeConfig.heightMultiplier * 3,
                                  crossAxisCount: 2,
                                  mainAxisExtent:
                                      SizeConfig.heightMultiplier * 22),

                          itemBuilder: (context, index) {
                            return Transform.translate(
                              offset: Offset(
                                  0.0,
                                  index.isOdd
                                      ? SizeConfig.heightMultiplier * 6
                                      : 0.0),
                              child: GestureDetector(
                                onTap: () {
                                  if (state.categories[index].catOpened == 0) {
                                    Navigator.of(context).pushNamed(
                                        '/category_word_detail',
                                        arguments: {
                                          'category': state.categories[index],
                                          'words': state.wordsList
                                              .where((item) =>
                                                  item.categoryId ==
                                                  state.categories[index].id)
                                              .toList(),
                                        });
                                  }
                                },
                                child: Stack(
                                  clipBehavior: Clip.antiAlias,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(int.parse(
                                            state.categories[index].catColor)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: Stack(
                                        clipBehavior: Clip.antiAlias,
                                        children: [
                                         Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 12),
                                                  child: Container(
                                                    height: SizeConfig
                                                            .heightMultiplier *
                                                        8,
                                                    child: Image.asset(
                                                      state.categories[index]
                                                          .catProfImg,
                                                      height: SizeConfig
                                                              .heightMultiplier *
                                                          8,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      2,
                                                ),
                                                Text(
                                                  state.categories[index]
                                                      .catName,
                                                  style: TextStyling
                                                      .stitleTextStyle,
                                                ),
                                                SizedBox(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      1.4,
                                                ),
                                                Text(
                                                  'Completed: ${getPercentage(category: state.categories[index], words: state.wordsList).toString()}%',
                                                  style: TextStyling
                                                      .simpletitleTextStyle,
                                                ),
                                                SizedBox(
                                                  height: SizeConfig
                                                          .heightMultiplier *
                                                      2,
                                                ),
                                                Container(
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    child:
                                                        LinearProgressIndicator(
                                                      value: getPercentage(
                                                              category: state
                                                                      .categories[
                                                                  index],
                                                              words: state
                                                                  .wordsList) /
                                                          100,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              whiteColor),
                                                      backgroundColor:
                                                          whiteGreyColor,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          state.categories[index].catOpened == 0
                                              ? Positioned(
                                                  right: SizeConfig
                                                          .widthMultiplier *
                                                      3,
                                                  top: SizeConfig
                                                          .heightMultiplier *
                                                      1.5,
                                                  child: Container(
                                                    height: SizeConfig
                                                            .heightMultiplier *
                                                        4,
                                                    child: Image.asset(
                                                      Images.crownIcon,
                                                      height: SizeConfig
                                                              .heightMultiplier *
                                                          2.5,
                                                    ),
                                                  ))
                                              : Container()
                                        ],
                                      ),
                                    ),
                                    state.categories[index].catOpened == 0
                                        ? Container()
                                        : Positioned.fill(
                                            child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black38
                                                  .withOpacity(0.5),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                            ),
                                          )),
                                    state.categories[index].catOpened == 1
                                        ? Positioned(
                                            right:
                                                SizeConfig.widthMultiplier * 3,
                                            top:
                                                SizeConfig.heightMultiplier * 1.5,
                                            child: Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      4,
                                              child: SvgPicture.asset(
                                                Images.lockIcon,
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    2.5,
                                              ),
                                            ))
                                        : Container()
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  }
                  return Container();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> _buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyling.appBarTextB,
      ));

  _builLoadingShimmer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
          padding: EdgeInsets.only(
            bottom: SizeConfig.heightMultiplier * 6,
          ),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: SizeConfig.heightMultiplier * 4,
              crossAxisSpacing: SizeConfig.heightMultiplier * 4,
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.4)),
          itemBuilder: (context, index) {
            return Transform.translate(
              offset: Offset(
                  0.0, index.isOdd ? SizeConfig.heightMultiplier * 6 : 0.0),
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.04),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 12),
                              child: Container(
                                height: SizeConfig.heightMultiplier * 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(0.04),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Skeleton(
                                width: SizeConfig.widthMultiplier * 6,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1.4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Skeleton(
                                width: SizeConfig.widthMultiplier * 12,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Skeleton(
                                    width: SizeConfig.widthMultiplier * 10,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                            right: 8,
                            top: 8,
                            child: Container(
                              height: SizeConfig.heightMultiplier * 4,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(0.04),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        height: SizeConfig.heightMultiplier * 4,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.04)),
                      ))
                ],
              ),
            );
          }),
    );
    ;
  }
}
