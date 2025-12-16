import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyles{
  MyStyles._();

  static TextStyle title14_400w({Color? color}) => GoogleFonts.manrope(fontSize: 14.sp, fontWeight: FontWeight.w400, color: color);
  static TextStyle title20_600w({Color? color}) => GoogleFonts.manrope(fontSize: 20.sp, fontWeight: FontWeight.w600, color: color);
  static TextStyle title12_400w({Color? color}) => GoogleFonts.manrope(fontSize: 12.sp, fontWeight: FontWeight.w400, color: color);
  static TextStyle title14_500w({Color? color}) => GoogleFonts.manrope(fontSize: 14.sp, fontWeight: FontWeight.w500, color: color);
  static TextStyle title14_00w({Color? color}) => GoogleFonts.manrope(fontSize: 14.sp, fontWeight: FontWeight.w500, color: color);
  static TextStyle title14_700w({Color? color}) => GoogleFonts.manrope(fontSize: 14.sp, fontWeight: FontWeight.w700, color: color);
  static TextStyle title24_600w({Color? color}) => GoogleFonts.poppins(fontSize: 24.sp, fontWeight: FontWeight.w600, color: color);
  static TextStyle title24_700w({Color? color}) => GoogleFonts.poppins(fontSize: 24.sp, fontWeight: FontWeight.w700, color: color);
  static TextStyle title14_500({Color? color}) => GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w500, color: color);
  static TextStyle title22_700({Color? color}) => GoogleFonts.manrope(fontSize: 22.sp, fontWeight: FontWeight.w700, color: color);

}

  extension TextStyleExtension on TextStyle {
    TextStyle withColor(Color color) => copyWith(color: color);
}
