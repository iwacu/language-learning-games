// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:language_learning_game/constants/buttons.dart';
// import 'package:language_learning_game/constants/colors.dart';
// import 'package:language_learning_game/constants/data_text.dart';
// import 'package:language_learning_game/constants/images.dart';
// import 'package:language_learning_game/constants/sizeConfig.dart';
// import 'package:language_learning_game/constants/snack_bar.dart';
// import 'package:language_learning_game/constants/text_styling.dart';
// import 'package:language_learning_game/cubit/game_service/game_services_cubit.dart';

// class GameChoosing extends StatefulWidget {
//   const GameChoosing({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<GameChoosing> createState() => _GameChoosingState();
// }

// class _GameChoosingState extends State<GameChoosing> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<GameServicesCubit, GameServicesState>(
//         builder: (context, stateGame) {
//           return Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage(Images.bgImage),
//               fit: BoxFit.cover,
//             )),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: SizeConfig.heightMultiplier * 4.5,
//                 ),
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: GestureDetector(
//                     onTap: () => Navigator.pop(context),
//                     child: Container(
//                       margin: EdgeInsets.only(
//                           right: SizeConfig.widthMultiplier * 8),
//                       height: SizeConfig.heightMultiplier * 5,
//                       width: SizeConfig.widthMultiplier * 8,
//                       decoration: BoxDecoration(
//                         color: whiteColor,
//                         shape: BoxShape.circle,
//                       ),
//                       child: Center(
//                         child: Image.asset(
//                           Images.appBarCancel,
//                           color: primaryColor,
//                           height: SizeConfig.heightMultiplier * 4,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 3,
//                   child: Stack(
//                     clipBehavior: Clip.antiAlias,
//                     alignment: Alignment.topCenter,
//                     children: [
//                       Container(
//                         height: SizeConfig.heightMultiplier * 88,
//                         width: SizeConfig.widthMultiplier * 68,
//                         decoration: BoxDecoration(
//                             color: primaryGreyyyy,
//                             borderRadius: BorderRadius.circular(50)),
//                       ),
//                       Container(
//                         height: SizeConfig.heightMultiplier * 86,
//                         width: SizeConfig.widthMultiplier * 74,
//                         decoration: BoxDecoration(
//                             color: primaryGreyyy,
//                             borderRadius: BorderRadius.circular(40)),
//                       ),
//                       Container(
//                         height: SizeConfig.heightMultiplier * 84,
//                         width: SizeConfig.widthMultiplier * 78,
//                         decoration: BoxDecoration(
//                             color: whiteColor,
//                             borderRadius: BorderRadius.circular(22)),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 left: SizeConfig.widthMultiplier * 3,
//                                 right: SizeConfig.widthMultiplier * 3,
//                                 top: SizeConfig.heightMultiplier * 3,
//                                 bottom: SizeConfig.heightMultiplier * 1.5,
//                               ),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     stateGame.category.catName,
//                                     style: TextStyling.appBarTextB,
//                                   ),
//                                   Image.asset(
//                                     stateGame.category.catProfImg,
//                                     height: SizeConfig.heightMultiplier * 4,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Divider(
//                               thickness: 0.8,
//                               color: grey,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 left: SizeConfig.widthMultiplier * 3,
//                                 top: SizeConfig.heightMultiplier * 1.5,
//                                 bottom: SizeConfig.heightMultiplier * 1.5,
//                               ),
//                               child: Text(
//                                 'Select Game',
//                                 style: TextStyling.appBarTextBB,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                   left: SizeConfig.widthMultiplier * 1.2),
//                               child: SizedBox(
//                                 height: SizeConfig.heightMultiplier * 19,
//                                 child: ListView.builder(
//                                     scrollDirection: Axis.horizontal,
//                                     itemCount: stateGame.gamesList.length,
//                                     itemBuilder: (context, index) {
//                                       return Padding(
//                                         padding: EdgeInsets.only(
//                                             right: SizeConfig.widthMultiplier *
//                                                 1.2),
//                                         child: GestureDetector(
//                                           onTap: () => context
//                                               .read<GameServicesCubit>()
//                                               .gameModeManupilation(
//                                                   gameModeIndex:
//                                                       stateGame.gameModeIndex,
//                                                   game: stateGame
//                                                       .gamesList[index]),
//                                           child: Stack(
//                                             clipBehavior: Clip.antiAlias,
//                                             alignment: Alignment.topCenter,
//                                             children: [
//                                               Container(
//                                                 height: SizeConfig
//                                                         .heightMultiplier *
//                                                     18,
//                                                 width:
//                                                     SizeConfig.widthMultiplier *
//                                                         34,
//                                                 decoration: BoxDecoration(
//                                                     color: stateGame
//                                                             .gamesListSelected
//                                                             .contains(stateGame
//                                                                     .gamesList[
//                                                                 index])
//                                                         ? primaryColor
//                                                         : grey,
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             12)),
//                                               ),
//                                               Container(
//                                                 height: SizeConfig
//                                                         .heightMultiplier *
//                                                     17.5,
//                                                 width:
//                                                     SizeConfig.widthMultiplier *
//                                                         34,
//                                                 decoration: BoxDecoration(
//                                                     color: whiteColor,
//                                                     border: Border.all(
//                                                         color: stateGame
//                                                                 .gamesListSelected
//                                                                 .contains(stateGame
//                                                                         .gamesList[
//                                                                     index])
//                                                             ? primaryColor
//                                                             : grey),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             12)),
//                                                 child: Column(
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.center,
//                                                   children: [
//                                                     SizedBox(
//                                                       height: SizeConfig
//                                                               .heightMultiplier *
//                                                           1.2,
//                                                     ),
//                                                     Image.asset(
//                                                       stateGame.gamesList[index]
//                                                           .imagePath,
//                                                       height: SizeConfig
//                                                               .heightMultiplier *
//                                                           8,
//                                                     ),
//                                                     SizedBox(
//                                                       height: SizeConfig
//                                                               .heightMultiplier *
//                                                           1.2,
//                                                     ),
//                                                     Text(
//                                                       stateGame.gamesList[index]
//                                                           .gameName,
//                                                       textAlign:
//                                                           TextAlign.center,
//                                                       style: TextStyling
//                                                           .appBarTextBB,
//                                                     )
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     }),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 left: SizeConfig.widthMultiplier * 3,
//                                 top: SizeConfig.heightMultiplier * 1.5,
//                                 bottom: SizeConfig.heightMultiplier * 1.5,
//                               ),
//                               child: Text(
//                                 'Select Sets',
//                                 style: TextStyling.appBarTextBB,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                   left: SizeConfig.widthMultiplier * 1.2),
//                               child: SizedBox(
//                                 height: SizeConfig.heightMultiplier * 12,
//                                 child: ListView.builder(
//                                     scrollDirection: Axis.horizontal,
//                                     itemCount: stateGame.wordsList.length,
//                                     itemBuilder: (context, index) {
//                                       return Padding(
//                                         padding: EdgeInsets.only(
//                                             right: SizeConfig.widthMultiplier *
//                                                 1.2),
//                                         child: GestureDetector(
//                                           onTap: () => context
//                                               .read<GameServicesCubit>()
//                                               .wordSelecting(
//                                                   word: stateGame
//                                                       .wordsList[index]),
//                                           child: Stack(
//                                             clipBehavior: Clip.antiAlias,
//                                             alignment: Alignment.topCenter,
//                                             children: [
//                                               Container(
//                                                 height: SizeConfig
//                                                         .heightMultiplier *
//                                                     11,
//                                                 width:
//                                                     SizeConfig.widthMultiplier *
//                                                         40,
//                                                 decoration: BoxDecoration(
//                                                     color: stateGame
//                                                             .wordsListSelected
//                                                             .contains(stateGame
//                                                                     .wordsList[
//                                                                 index])
//                                                         ? primaryColor
//                                                         : grey,
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             12)),
//                                               ),
//                                               Container(
//                                                 height: SizeConfig
//                                                         .heightMultiplier *
//                                                     10.5,
//                                                 width:
//                                                     SizeConfig.widthMultiplier *
//                                                         40,
//                                                 decoration: BoxDecoration(
//                                                     color: whiteColor,
//                                                     border: Border.all(
//                                                         color: stateGame
//                                                                 .wordsListSelected
//                                                                 .contains(stateGame
//                                                                         .wordsList[
//                                                                     index])
//                                                             ? primaryColor
//                                                             : grey),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             12)),
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.all(
//                                                       12.0),
//                                                   child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Expanded(
//                                                         child: Image.asset(
//                                                           stateGame
//                                                               .wordsList[index]
//                                                               .imagePath,
//                                                         ),
//                                                       ),
//                                                       Expanded(
//                                                         child: Text(
//                                                           stateGame
//                                                               .wordsList[index]
//                                                               .wordName,
//                                                           maxLines: 2,
//                                                           overflow: TextOverflow
//                                                               .ellipsis,
//                                                           textAlign:
//                                                               TextAlign.center,
//                                                           style: TextStyling
//                                                               .appBarTextBB,
//                                                         ),
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     }),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 left: SizeConfig.widthMultiplier * 3,
//                                 top: SizeConfig.heightMultiplier * 1.5,
//                                 bottom: SizeConfig.heightMultiplier * 1.5,
//                               ),
//                               child: Text(
//                                 'Game Mode',
//                                 style: TextStyling.appBarTextBB,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                   left: SizeConfig.widthMultiplier * 1.2),
//                               child: SizedBox(
//                                 height: SizeConfig.heightMultiplier * 12,
//                                 child: ListView.builder(
//                                     scrollDirection: Axis.horizontal,
//                                     itemCount: DataText.gameModes.length,
//                                     itemBuilder: (context, index) {
//                                       return Padding(
//                                         padding: EdgeInsets.only(
//                                             right: SizeConfig.widthMultiplier *
//                                                 1.2),
//                                         child: GestureDetector(
//                                           onTap: () => context
//                                               .read<GameServicesCubit>()
//                                               .gameModeManupilation(
//                                                   game: null,
//                                                   gameModeIndex: index),
//                                           child: Stack(
//                                             clipBehavior: Clip.antiAlias,
//                                             alignment: Alignment.topCenter,
//                                             children: [
//                                               Container(
//                                                 height: SizeConfig
//                                                         .heightMultiplier *
//                                                     11,
//                                                 width:
//                                                     SizeConfig.widthMultiplier *
//                                                         40,
//                                                 decoration: BoxDecoration(
//                                                     color: stateGame
//                                                                 .gameModeIndex ==
//                                                             index
//                                                         ? primaryColor
//                                                         : grey,
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             12)),
//                                               ),
//                                               Container(
//                                                 height: SizeConfig
//                                                         .heightMultiplier *
//                                                     10.5,
//                                                 width:
//                                                     SizeConfig.widthMultiplier *
//                                                         40,
//                                                 decoration: BoxDecoration(
//                                                     color: whiteColor,
//                                                     border: Border.all(
//                                                         color: stateGame
//                                                                     .gameModeIndex ==
//                                                                 index
//                                                             ? primaryColor
//                                                             : grey),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             12)),
//                                                 child: Padding(
//                                                   padding: const EdgeInsets.all(
//                                                       12.0),
//                                                   child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Expanded(
//                                                         child: Image.asset(
//                                                           DataText.gameModes[
//                                                               index]['image']!,
//                                                         ),
//                                                       ),
//                                                       Expanded(
//                                                         child: Text(
//                                                           DataText.gameModes[
//                                                               index]['text']!,
//                                                           maxLines: 2,
//                                                           overflow: TextOverflow
//                                                               .ellipsis,
//                                                           textAlign:
//                                                               TextAlign.center,
//                                                           style: TextStyling
//                                                               .appBarTextBB,
//                                                         ),
//                                                       )
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     }),
//                               ),
//                             ),
//                             SizedBox(
//                               height: SizeConfig.heightMultiplier * 1.5,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: SizeConfig.widthMultiplier * 1.5),
//                               child: DefaultButtonGameAll(
//                                   text: 'Start Now',
//                                   press: () {
//                                     stateGame.wordsList.forEach((item) {
//                                       print(
//                                           'id ${item.id} :: name ${item.wordName} :: score ${item.catScore}');
//                                     });
//                                     if (stateGame.gameWidgetSelected.isEmpty) {
//                                       showSnackBar(context,
//                                           'Please at least select a Game');
//                                     } else {
//                                       Navigator.of(context)
//                                           .pushNamed('/main_game');
//                                     }
//                                   }),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
   
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
