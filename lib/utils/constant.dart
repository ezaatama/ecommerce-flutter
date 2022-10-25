// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorUI {
  ///Primary Neutral Pallete Color
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color DARK_PRIMARY_1 = Color(0xFF070304);
  static const Color DARK_PRIMARY_2 = Color(0xFF090506);
  static const Color DARK_PRIMARY_3 = Color(0xFF0B0808);
  static const Color DARK_PRIMARY_4 = Color(0xFF0D0B0B);
  static const Color DARK_PRIMARY_5 = Color(0xFF101010);
  static const Color LIGHT_PRIMARY_1 = Color(0xFFf6F6F6);
  static const Color LIGHT_PRIMARY_2 = Color(0xFFB7B7B7);
  static const Color LIGHT_PRIMARY_3 = Color(0xFFE7E7E7);
  static const Color LIGHT_PRIMARY_4 = Color(0xFFF3F3F3);

  ///Success Pallete Color
  static const Color DARK_GREEN_1 = Color(0xFF16671A);
  static const Color DARK_GREEN_2 = Color(0xFF2B7D25);
  static const Color DARK_GREEN_3 = Color(0xFF479B36);
  static const Color DARK_GREEN_4 = Color(0xFF66B949);
  static const Color DARK_GREEN_5 = Color(0xFF89D860);
  static const Color LIGHT_GREEN_1 = Color(0xFFAFE786);
  static const Color LIGHT_GREEN_2 = Color(0xFFC9F3A0);
  static const Color LIGHT_GREEN_3 = Color(0xFFE1FBC1);
  static const Color LIGHT_GREEN_4 = Color(0xFFF2FDDF);
  
  ///Error Pallete Color
  static const Color DARK_RED_1 = Color(0xFF7D0D10);
  static const Color DARK_RED_2 = Color(0xFF981C19);
  static const Color DARK_RED_3 = Color(0xFFBD3325);
  static const Color DARK_RED_4 = Color(0xFFE04F33);
  static const Color DARK_RED_5 = Color(0xFFFF7144);
  static const Color LIGHT_RED_1 = Color(0xFFFF9E71);
  static const Color LIGHT_RED_2 = Color(0xFFFFBA8C);
  static const Color LIGHT_RED_3 = Color(0xFFFFD6B3);
  static const Color LIGHT_RED_4 = Color(0xFFFFEDD8);
  
  ///Brand Pallete Color
  static const Color DARK_YELLOW_1 = Color(0xFF62740D);
  static const Color DARK_YELLOW_2 = Color(0xFF798C16);
  static const Color DARK_YELLOW_3 = Color(0xFF99AE23);
  static const Color DARK_YELLOW_4 = Color(0xFFBAD033);
  static const Color DARK_YELLOW_5 = Color(0xFFDDF247);
  static const Color LIGHT_YELLOW_1 = Color(0xFFE8F774);
  static const Color LIGHT_YELLOW_2 = Color(0xFFF0FB90);
  static const Color LIGHT_YELLOW_3 = Color(0xFFF7FDB5);
  static const Color LIGHT_YELLOW_4 = Color(0xFFFBFEDA);

  ///Information Pallete Color
  static const Color DARK_BLUE_1 = Color(0xFF003778);
  static const Color DARK_BLUE_2 = Color(0xFF014D90);
  static const Color DARK_BLUE_3 = Color(0xFF006DB4);
  static const Color DARK_BLUE_4 = Color(0xFF0091D8);
  static const Color DARK_BLUE_5 = Color(0xFF00BAFB);
  static const Color LIGHT_BLUE_1 = Color(0xFFFFF7D0);
  static const Color LIGHT_BLUE_2 = Color(0xFFFFF7D0);
  static const Color LIGHT_BLUE_3 = Color(0xFFFFF7D0);
  static const Color LIGHT_BLUE_4 = Color(0xFFFFF7D0);

  ///Warning Pallete Color
  static const Color DARK_WARNING_1 = Color(0xFF736B16);
  static const Color DARK_WARNING_2 = Color(0xFF8C821D);
  static const Color DARK_WARNING_3 = Color(0xFFAEA227);
  static const Color DARK_WARNING_4 = Color(0xFFCFC331);
  static const Color DARK_WARNING_5 = Color(0xFFF1E43A);
  static const Color LIGHT_WARNING_1 = Color(0xFFF7ED59);
  static const Color LIGHT_WARNING_2 = Color(0xFFFCF476);
  static const Color LIGHT_WARNING_3 = Color(0xFFFEFAA2);
  static const Color LIGHT_WARNING_4 = Color(0xFFFFFCD0);

  ///Secondinary Pallete Color
  static const Color DARK_SECONDINARY_1 = Color(0xFF74100D);
  static const Color DARK_SECONDINARY_2 = Color(0xFF8C2216);
  static const Color DARK_SECONDINARY_3 = Color(0xFFAE3A23);
  static const Color DARK_SECONDINARY_4 = Color(0xFFD05833);
  static const Color DARK_SECONDINARY_5 = Color(0xFFF27A47);
  static const Color LIGHT_SECONDINARY_1 = Color(0xFFF7A474);
  static const Color LIGHT_SECONDINARY_2 = Color(0xFFFBBE90);
  static const Color LIGHT_SECONDINARY_3 = Color(0xFFFDD9B5);
  static const Color LIGHT_SECONDINARY_4 = Color(0xFFFEEEDA);
}

class FontUI {
  static const FontWeight WEIGHT_LIGHT = FontWeight.w200;
  static const FontWeight WEIGHT_MEDIUM = FontWeight.w400;
  static const FontWeight WEIGHT_SEMIBOLD = FontWeight.w600;
  static const FontWeight WEIGHT_BOLD = FontWeight.w800;
}

TextStyle PRIMARY_TEXT_STYLE = GoogleFonts.poppins(color: ColorUI.DARK_PRIMARY_1);
TextStyle WHITE_TEXT_STYLE = GoogleFonts.poppins(color: ColorUI.WHITE);
TextStyle LIGHT_PRIMARY_TEXT_STYLE = GoogleFonts.poppins(color: ColorUI.LIGHT_PRIMARY_2);

