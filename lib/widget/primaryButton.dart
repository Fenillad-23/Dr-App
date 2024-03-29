import 'package:flutter/material.dart';
import '../color/AppColor.dart';
import 'TextView.dart';

Container primaryButton(double width, double height, Color? backgroundColor,
    onPressed, String title, Color? TextColor,
    [double? radius, Color? outlineBorderColor]) {
  return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          gradient: LinearGradient(
              colors: AppColors.darkGradientButtonColor,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              animationDuration: Duration(milliseconds: 5000),
              backgroundColor: backgroundColor,
              side: BorderSide(color: outlineBorderColor ?? Colors.blue),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 0))),
          onPressed: onPressed,
          child: TextView('$title',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              textColor: TextColor)));
}
