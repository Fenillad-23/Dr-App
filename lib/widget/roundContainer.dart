import 'package:demo/widget/AssetIcon.dart';
import 'package:flutter/material.dart';

import '../color/AppColor.dart';

Container RoundContainer(double width, double height, String Path, onPressed,
    [double? size]) {
  return Container(
    height: height,
    width: width,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightButtonColor, shape: CircleBorder()),
      onPressed: onPressed,
      child: AssetIcon(
        '$Path',
      ),
    ),
  );
}
