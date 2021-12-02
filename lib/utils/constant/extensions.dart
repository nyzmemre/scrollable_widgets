import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery=>MediaQuery.of(this);
}

extension ExtensionMediaQuery on BuildContext{
  double get height=>mediaQuery.size.height;
  double get width=>mediaQuery.size.width;

  double get zeroVal=>height*0.0;
  double get veryLowVal=>height*0.005;
  double get lowVal=>height*0.01;
  double get normalVal=>height*0.02;
  double get highVal=>height*0.04;
  double get veryHighVal=>height*0.1;
  double get horizantalHighVal=>width*0.2;

}

extension ExtensionPadding on BuildContext{
  EdgeInsets get zeroPadding=>EdgeInsets.all(zeroVal);
  EdgeInsets get veryLowPadding=>EdgeInsets.all(veryLowVal);
  EdgeInsets get lowPadding=>EdgeInsets.all(lowVal);
  EdgeInsets get normalPadding=>EdgeInsets.all(normalVal);
  EdgeInsets get highPadding=>EdgeInsets.all(highVal);
  EdgeInsets get veryHighPadding=>EdgeInsets.all(veryHighVal);

  EdgeInsets get verticalPadding=>EdgeInsets.symmetric(vertical: normalVal);
  EdgeInsets get horizontalHighPadding=>EdgeInsets.symmetric(horizontal: horizantalHighVal);
  EdgeInsets get horizontalPadding=>EdgeInsets.symmetric(horizontal: highVal);
  EdgeInsets get horizontalVeryLowPadding=>EdgeInsets.symmetric(horizontal: veryLowVal);

}

extension SizedBoxExtension on BuildContext{
  Widget get fiveSizedBox=>SizedBox(height: 5,);
  Widget get tenSizedBox=>SizedBox(height: 10,);
  Widget get fifteenSizedBox=>SizedBox(height: 15,);
  Widget get twentySizedBox=>SizedBox(height: 20,);

  Widget get horFiveSizedBox=>SizedBox(width: 5);
  Widget get horTenSizedBox=>SizedBox(width: 10);
  Widget get horFifteenSizedBox=>SizedBox(width: 15);
  Widget get horTwentySizedBox=>SizedBox(width: 20);
}