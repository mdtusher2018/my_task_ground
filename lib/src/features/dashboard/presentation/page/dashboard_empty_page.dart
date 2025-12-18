import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/others/dashboard_appbar.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_image.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';

class DashboardEmptyPage extends StatelessWidget {
  const DashboardEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBG,
      appBar: CommonDashboardAppBar("SCM"),
      body: Container(
        padding: EdgeInsets.all(16.r),
        margin: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            spacing: 8.h,
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              CommonImage(
                imagePath: "assest/image/empty_view.png",
                width: 200.w,
                height: 200.w,
                isAsset: true,
              ),

              CommonText(
                "No data is here,\nplease wait.",
                textAlign: TextAlign.center,
              ),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
