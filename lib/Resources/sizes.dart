import 'package:flutter/material.dart';

double width(BuildContext context) => MediaQuery.of(context).size.width;

double height(BuildContext context) => MediaQuery.of(context).size.height;

class AppSize {
  //================padding===============================================
  static double padding1(context) => width(context) * .01;
  static double padding11(context) => width(context) * .015;

  static double padding2(context) => width(context) * .02;

  static double padding(context) => width(context) * .03;

  static double padding4(context) => width(context) * .04;

  static double padding5(context) => width(context) * .05;

  static double padding8(context) => width(context) * .08;

  static double padding10(context) => width(context) * .1;

  //===================margin=============================================
  static double margin1(context) => width(context) * .01;

  static double margin2(context) => width(context) * .02;

  static double margin4(context) => width(context) * .04;

  static double margin5(context) => width(context) * .05;

  static double margin10(context) => width(context) * .1;

  static double margin30(context) => width(context) * .3;

  //===============spaceHeight=============================================
  static spaceHeight1(context) => SizedBox(height: height(context) * .01);

  static spaceHeight2(context) => SizedBox(height: height(context) * .02);

  static spaceHeight3(context) => SizedBox(height: height(context) * .03);

  static spaceHeight5(context) => SizedBox(height: height(context) * .05);

  static spaceHeight6(context) => SizedBox(height: height(context) * .06);
  static spaceHeight12(context) => SizedBox(height: height(context) * .12);

  //===============spaceWidth==============================================
  static spaceWidth1(context) => SizedBox(width: width(context) * .01);

  static spaceWidth2(context) => SizedBox(width: width(context) * .02);

  static spaceWidth3(context) => SizedBox(width: width(context) * .03);

  static spaceWidth4(context) => SizedBox(width: width(context) * .04);

  static spaceWidth5(context) => SizedBox(width: width(context) * .05);

  //===============BorderRadius================================================
  static borderRadius5(context) => width(context) * .01;

  static borderRadius10(context) => width(context) * .02;

  static borderRadius15(context) => width(context) * .03;

  static borderRadius20(context) => width(context) * .04;

  static borderRadius25(context) => width(context) * .05;
//===============width==========================================================
  static width50(context) => width(context) * .5;

  static width40(context) => width(context) * .4;

  static width30(context) => width(context) * .3;

  static width20(context) => width(context) * .2;
  static width10(context) => width(context) * .12;
  //===============height==========================================================
  static height10(context) => height(context) * .1;
  static height20(context) => height(context) * .2;
  static height1(context) => height(context) * .01;
  static height30(context) => height(context) * .3;

  static height35(context) => height(context) * .35;

  static height40(context) => height(context) * .4;
}
