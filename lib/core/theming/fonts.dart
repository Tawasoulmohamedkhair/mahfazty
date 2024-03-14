import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsHelper {
  static TextStyle fonts16Boldwhite = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle fonts18Boldgrey = GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.w300, color: Colors.grey);
  static TextStyle fonts13Boldgrey = GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w300, color: Colors.grey);
  static TextStyle fonts13Bolwhite = GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w300, color: Colors.white);

  static TextStyle font16regular =
      GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.normal);
  static TextStyle font28SemiBoldWhite = GoogleFonts.poppins(
      fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white);
}
