import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';

//I'll change it to a class

Widget commonRadioButon(String text, bool active) {
  return Row(
    children: [
      Icon(
        active ? Icons.radio_button_checked : Icons.radio_button_off,
        color: active ? AppColors.primary : AppColors.gray,
        size: 18,
      ),
      SizedBox(width: 6.w),
      CommonText(
        text,
        size: 13,
        color: active ? AppColors.primary : AppColors.textSecondary,
      ),
    ],
  );
}
