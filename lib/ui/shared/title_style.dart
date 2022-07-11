import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/ui/shared/colors.dart';

var titleStyleHeading = GoogleFonts.sourceSansPro(
  color: const Color(0xFF0A0A0A),
  fontWeight: FontWeight.w800,
  fontSize: 29
);

var titleStyleNormal = GoogleFonts.sourceSansPro(
  color: const Color(0xFF8C8C8C),
  fontSize: 13,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400
);

var titleStylePrimary = titleStyleNormal.copyWith(
  color: blueColor
);