import 'package:flutter/material.dart';

// for hex color
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color buttonBlue = HexColor("#0098D9");
Color grey = HexColor("#DDDDDD");
Color primaryColor = HexColor("#00B3FF");
Color primaryColorGreyy = HexColor("#5EC3FC");
Color primaryColorGrey = HexColor("#A6D6F0");
Color primaryGreyyy = HexColor("#D3F7FB");
Color primaryGreyyyy = HexColor("#C4F1FB");
Color redGrey = HexColor("#D1403F");
Color blackColor = Colors.black;
Color whiteColor = Colors.white;
Color whiteGreyColor = Colors.white70;
Color redOrange = HexColor("#FF0056");
Color green = HexColor("#14BA70");
Color greenLight = HexColor("#00DF3E");
Color redOrangeF = HexColor("#FF1400");
Color redOrangeGry = HexColor("#E55B2D");
Color redOrangeGryF = HexColor("#FF9000");
Color yellowOrange = HexColor("#FFB900");
Color yellowOrangeF = HexColor("#FFF000");
Color selectedColor = HexColor("#43BCCD");
Color backGrondColor = HexColor("#E3F5FF");
Color bottom = HexColor("#C0E5FA");

Color homeColorLight = HexColor("#D9F9FB");
Color homeColor = HexColor("#66CBFC");

// colors for words_list

Color wordColor1 = HexColor("#EDB226");
Color wordColor2 = HexColor("#8AC5DF");
Color wordColor3 = HexColor("#EA5338");
Color wordColor4 = HexColor("#88C6B9");
Color wordColor5 = HexColor("#F49546");
Color wordColor6 = HexColor("#0F6194");
Color wordColor7 = HexColor("#F2B993");
Color wordColor8 = HexColor("#EA5338");
Color wordColor9 = HexColor("#14827D");

// games_color
Color trueGameColor = HexColor("#CC00FF");
Color wordMatchingGame = HexColor("#FF10E6");
Color flippingGameColor = HexColor("#FF7318");
Color selectGameColor = HexColor("#FF1400");
