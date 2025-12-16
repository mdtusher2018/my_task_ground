import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/shared/themes/colors.dart';

class CommonCloseButton extends StatelessWidget {
  final BuildContext context;

  const CommonCloseButton(this.context, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(this.context);
      },
      child: Container(
        padding: EdgeInsets.all(6.r),
        decoration: BoxDecoration(
          color: AppColors.boxBG,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.close),
      ),
    );
  }
}
