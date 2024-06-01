import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const kPrimaryBlack = Color(0xFF000000);
const kPrimaryWhite = Color(0xFFFFFFFF);
const kRed = Color(0xFFFF0000);
const kGrey = Colors.grey;
const kBlurColour = Color(0xFF19392C);
const kYellowBackground = Color(0xffFAD918);
const kFadedYellow = Color(0xffFFFADF);
const kTextFieldBorder = Color(0xffB8C9C9);
const kDashboardBackground = Color(0xffA5A5A5);
const kTransparent = Colors.transparent;

Widget kUnfocus({child}) => GestureDetector(
  behavior: HitTestBehavior.translucent,
  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
  child: child,
);

const FontWeight kThin = FontWeight.w100;
const FontWeight kExtraLight = FontWeight.w200;
const FontWeight kLight = FontWeight.w300;
const FontWeight kRegular = FontWeight.w400;
const FontWeight kMedium = FontWeight.w500;
const FontWeight kSemiBold = FontWeight.w600;
const FontWeight kBold = FontWeight.w700;
const FontWeight kExtraBold = FontWeight.w800;
const FontWeight kBlack = FontWeight.w900;

/// Text Inputs
const kNextInputAction = TextInputAction.next;
//FORMATTERS

final kNameFormatter = [
  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]'))
];
final kSingleNameFormatter = [
  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
];
final kTextFormatter = [
  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9 ]')),
];
final kEmailFormatter = [
  FilteringTextInputFormatter.allow(
    RegExp('[a-zA-Z@0-9._]'),
  ),
];
final kNumberFormatter = [FilteringTextInputFormatter.digitsOnly];
final kCallUpNumberFormatter = [
  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9/]')),
];
final kPasswordFormatter = [
  FilteringTextInputFormatter.allow(
    RegExp(
      ('[a-zA-Z0-9_|#@!*?+%]'),
    ),
  ),
];

const kNameCapitalization = TextCapitalization.words;
const kUpperCase = TextCapitalization.characters;
const kEmailKeyboard = TextInputType.emailAddress;
const kNameKeyboard = TextInputType.text;
const kNumberKeyboard = TextInputType.number;