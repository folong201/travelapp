import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kwhite = Color(0xffffffff);
const Color kLightwhite = Color(0xffeff5f4);
const Color kLighterwhite = Color(0xfffcfcfc);

const Color kGrey = Color(0xff9397a0);
const Color kLightGrey = Color(0xffa7a7a7);

const Color kBlue = Color(0xff5474fd);
const Color klightBlue = Color(0xff83b1ff);
const Color kLighterBlue = Color(0xffc1d4f9);

const Color kDarckBlue = Color(0xff19202d);
const Color kBoderColor = Color(0xffEEEEEE);
const double kBorderRadius = 16.0;
const double kpaddinHorizontal = 40.0;
final kBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadius),
    borderSide: BorderSide.none);

final kPoppinsBold =
    GoogleFonts.poppins(color: kDarckBlue, fontWeight: FontWeight.w700);

final kPoppinsSemiBold =
    GoogleFonts.poppins(color: kDarckBlue, fontWeight: FontWeight.w600);

final kPoppinsMediumBold =
    GoogleFonts.poppins(color: kDarckBlue, fontWeight: FontWeight.w500);

final kPoppinsRegularBold =
    GoogleFonts.poppins(color: kDarckBlue, fontWeight: FontWeight.w400);
