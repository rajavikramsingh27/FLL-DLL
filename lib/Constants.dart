import 'package:flutter/material.dart';


const kFont = 'Metropolis';
const kThemeColour_Upper = '';
const kThemeColour_Down = '';


 const FTButton      = Color(0xFF00818A);
 const underline      = Color(0xFF00818A);
 const appBorder      = Color(0xFF2F3863);
 const splashBg       = Color(0xFF293462);
 const textYellow     = Color(0xFFFFAF0E);
 const textWhite      = Color(0xFFD5D5D5);
 const textWhiteBlue  = Color(0xFFDBE1FF);
 const drawerHeaderBg = Color(0xFF26305C);
 const appBg          = Color(0xFF2D3765);
 const appBg1         = Color(0xFF2F3B6B);
 const lightYello     = Color(0xFFFFAF0E);
 const darkYellow     = Color(0xFFFFAF0E);
 const red            = Color(0xFFDB3022);
 const black          = Color(0xFF222222);
 const lightGray      = Color(0xFF9B9B9B);
 const darkGray       = Color(0xFF979797);
 const white          = Color(0xFFFFFFFF);
 const orange         = Color(0xFFFFBA49);
 const background     = Color(0xFFE5E5E5);
 const backgroundLight= Color(0xFFF9F9F9);
 const transparent    = Color(0x00000000);
 const success        = Color(0xFF2AA952);
 const green          = Color(0xFF2AA952);
 const chartBg        = Color(0xFF11104C);//0xFF190056
 const componentBg    = Color(0xFF353B72);
 const dropDownBg     = Color(0xFF2D3269);
 const candle1        = Color(0xFF00AFFF);
 const candle2        = Color(0xFFFF0053);
 const tabBg          = Color(0xFF343E6A);
 const appBg2         = Color(0xFF2A2F65);
 const tableHeaderBg  = Color(0xFF3B4776);
 const cellOdd        = Color(0xFF303C6B);
 const cellEven       = Color(0xFF293462);
 const text_gray_c    = Color(0xFFCCCCCC);
 const dropDownArrowBg = Color(0xFF545D81);
 const dropDownBorder  = Color(0xFF7b82a2);
 const dropDownExpandedBgArrowBg = Color(0xFF757D9D);
 const resetButtonBg = Color(0xFF455284);
 const tableBorderColor = Color(0xFF8593CF);



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



