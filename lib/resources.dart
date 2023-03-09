import 'dart:ui';

const Color cPrimaryOne=Color(0xff6FC7FA);
const Color cPrimaryTwo=Color(0xff71F9F9);
const Color cPrimaryThree=Color(0xff97D9FA);


const Color cSecondaryOne = Color(0xffC773FC);
const Color cSecondaryTwo = Color(0xff8B76FB);
const Color cSecondaryThree = Color(0xffF7E2FF);

const Color cBackGroundOne=Color(0xff333333);
const Color cBackGroundTwo=Color(0xff4F4F4F);
const Color cBackGroundThree=Color(0xff828282);
const Color cBackGroundFour=Color(0xffBDBDBD);
const Color cBackGroundFive=Color(0xffE0E0E0);
const Color cBackGroundSix=Color(0xffF2F2F2);

const Color cBackGroundWhite = Color(0xffFFFFFF);

extension on Color {
  Color operator +(Color other) => Color.alphaBlend(this, other);
}
final statusBarColor =  cPrimaryOne + cSecondaryOne + cPrimaryTwo;