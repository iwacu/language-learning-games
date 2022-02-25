// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:language_learning_game/constants/colors.dart';
// import 'package:language_learning_game/constants/images.dart';
// import 'package:language_learning_game/constants/sizeConfig.dart';
// import 'package:language_learning_game/constants/text_styling.dart';

// class HomeLanguageSelector extends StatefulWidget {
//   const HomeLanguageSelector({Key? key}) : super(key: key);

//   @override
//   State<HomeLanguageSelector> createState() => _HomeLanguageSelectorState();
// }

// class _HomeLanguageSelectorState extends State<HomeLanguageSelector> {
//   bool _up = true;
//   bool _down = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: whiteColor,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             clipBehavior: Clip.antiAlias,
//             children: [
//               Container(
//                   height: SizeConfig.heightMultiplier * 38,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: primaryColorGreyy,
//                       borderRadius: new BorderRadius.only(
//                         bottomLeft: const Radius.circular(90.0),
//                         bottomRight: const Radius.circular(90.0),
//                       ))),
//               Container(
//                   height: SizeConfig.heightMultiplier * 36,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: primaryColorGrey,
//                       borderRadius: new BorderRadius.only(
//                         bottomLeft: const Radius.circular(60.0),
//                         bottomRight: const Radius.circular(60.0),
//                       ))),
//               Container(
//                 height: SizeConfig.heightMultiplier * 34,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: primaryColor,
//                     borderRadius: new BorderRadius.only(
//                       bottomLeft: const Radius.circular(30.0),
//                       bottomRight: const Radius.circular(30.0),
//                     )),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       Images.onboardingImag_3,
//                       height: SizeConfig.imageSizeMultiplier * 14,
//                     ),
//                     SizedBox(height: SizeConfig.heightMultiplier * 6),
//                     Text(
//                       'Select Language',
//                       style: TextStyling.titleTextStyle,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: SizeConfig.heightMultiplier * 4,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//             child: GestureDetector(
//               onTap: () => setState(() {
//                 _up = true;
//                 _down = false;
//               }),
//               child: Stack(
//                 clipBehavior: Clip.antiAlias,
//                 children: [
//                   Container(
//                     height: SizeConfig.heightMultiplier * 8.5,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: _up ? whiteColor : grey,
//                         border: Border.all(color: _up ? whiteColor : grey)),
//                   ),
//                   Container(
//                     height: SizeConfig.heightMultiplier * 8,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: whiteColor,
//                         border: Border.all(color: _up ? primaryColor : grey)),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 4),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: SizeConfig.heightMultiplier * 6,
//                             decoration: BoxDecoration(shape: BoxShape.circle),
//                             child: Center(
//                               child: SvgPicture.asset(
//                                 Images.ukIcon,
//                                 height: SizeConfig.heightMultiplier * 6,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: SizeConfig.widthMultiplier * 3,
//                           ),
//                           Text(
//                             'BRITISH ENGLISH',
//                             style: TextStyling.containerTextStyle,
//                           ),
//                           Spacer(),
//                           _up
//                               ? Container(
//                                   height: SizeConfig.heightMultiplier * 4,
//                                   decoration:
//                                       BoxDecoration(shape: BoxShape.circle),
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.verified_rounded,
//                                       color: primaryColor,
//                                     ),
//                                   ),
//                                 )
//                               : Container(),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//             child: GestureDetector(
//               onTap: () => setState(() {
//                 _up = false;
//                 _down = true;
//               }),
//               child: Stack(
//                 clipBehavior: Clip.antiAlias,
//                 children: [
//                   Container(
//                     height: SizeConfig.heightMultiplier * 8.5,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: _down ? whiteColor : grey,
//                         border: Border.all(color: _down ? whiteColor : grey)),
//                   ),
//                   Container(
//                     height: SizeConfig.heightMultiplier * 8,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: whiteColor,
//                         border: Border.all(color: _down ? primaryColor : grey)),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 4),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: SizeConfig.heightMultiplier * 6,
//                             decoration: BoxDecoration(shape: BoxShape.circle),
//                             child: Center(
//                               child: Image.asset(
//                                 Images.usaIcon,
//                                 height: SizeConfig.heightMultiplier * 6,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: SizeConfig.widthMultiplier * 3,
//                           ),
//                           Text(
//                             'AMERICAN ENGLISH',
//                             style: TextStyling.containerTextStyle,
//                           ),
//                           Spacer(),
//                           _down
//                               ? Container(
//                                   height: SizeConfig.heightMultiplier * 4,
//                                   decoration:
//                                       BoxDecoration(shape: BoxShape.circle),
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.verified_rounded,
//                                       color: primaryColor,
//                                     ),
//                                   ),
//                                 )
//                               : Container(),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
