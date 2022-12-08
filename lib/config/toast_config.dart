


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../app colors/app_colors.dart';
import '../enums/toast_states.dart';


class ToastConfig{

  static showToast({
    required String msg,
    required ToastStates toastStates,
  }) =>
      Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(toastStates),
        textColor: Colors.white,
        fontSize: 16.0,
      );
}


Color chooseToastColor(ToastStates state) {
  late Color color;
  switch (state) {
    case ToastStates.Success:
      color = AppColors.greenColor;
      break;
    case ToastStates.Error:
      color = AppColors.redColor;
      break;
    case ToastStates.Warning:
      color =AppColors.yellowColor;
      break;
  }

  return color;
}