import 'package:flutter/material.dart';

const kGoldenYellow = Color(0xFFFFED26);
const kRubyRed = Color(0xFFE14143);
const kDropYellow = Color(0xFFF9B02A);
const kAmarelinho = Color(0xFFF6BE08);
const klightYellow = Color(0xFFF8FAC4);
const kpastelBlue = Color(0xFFA7C6D4);
const kdarkBeige = Color(0xFF8A5749);
const klightBeige = Color(0xFFE4BDB5);
const kSheqPurple = Color(0xFF802058);
const kEggplant = Color(0xFF210E22);
const kSangria = Color(0xFF320A1B);
const kPlum = Color(0xFF401125);
const kIris = Color(0xFF9866C5);
const kLavender = Color(0xFFE39FF6);



const kTextInputDecor = InputDecoration(
  hintText: 'Enter a value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: kDropYellow, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: kDropYellow, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);






