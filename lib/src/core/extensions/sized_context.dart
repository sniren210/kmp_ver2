import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

extension SizedContext on BuildContext {
  Size get appSize => MediaQuery.of(this).size;

  Dimensions get dimensions => Dimensions();

}

class Dimensions{

  double get paddingSizeExtraExtraSmall => 2.0.h;
  double get paddingSizeExtraSmall => 5.0.h;
  double get paddingSizeSmall => 10.0.h;
  double get paddingSizeDefault => 15.0.h;
  double get homePagePadding => 16.0.h;
  double get paddingSizeDefaultAddress => 17.0.h;
  double get paddingSizeLarge => 20.0.h;
  double get paddingSizeExtraLarge => 25.0.h;
  double get paddingSizeThirtyFive => 35.0.h;
  double get paddingSizeOverLarge => 50.0.h;

  double get marginSizeExtraSmall => 5.0.h;
  double get marginSizeSmall => 10.0.h;
  double get marginSizeDefault => 15.0.h;
  double get marginSizeLarge => 20.0.h;
  double get marginSizeExtraLarge => 25.0.h;
  double get marginSizeAuthSmall => 30.0.h;
  double get marginSizeAuth => 50.0.h;
}


