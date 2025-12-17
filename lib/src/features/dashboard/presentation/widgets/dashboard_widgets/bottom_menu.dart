import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/config/router/routes.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';
import 'package:scube_task/src/shared/widgets/common_image.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 10.h,
      crossAxisSpacing: 10.w,
      childAspectRatio: 4.2, // responsive tweak
      children: const [
        MenuButton(
          title: "Analysis Pro",
          icon: "assest/image/chart_490605.png",
        ),
        MenuButton(
          title: "G. Generator",
          icon: "assest/image/generator_8789846.png",
        ),
        MenuButton(
          title: "Plant Summery",
          icon: "assest/image/charge_7345374 1.png",
        ),
        MenuButton(
          title: "Natural Gas",
          icon: "assest/image/fire_3900509 1.png",
        ),
        MenuButton(
          title: "D. Generator",
          icon: "assest/image/generator_8789846.png",
        ),
        MenuButton(
          title: "Water Process",
          icon: "assest/image/faucet_1078798.png",
        ),
      ],
    );
  }
}
class MenuButton extends StatelessWidget {
  final String title;
  final String icon;
  

  const MenuButton({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoutes.dashboardEmptyView);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Row(
       
          children: [
            CommonImage(
              imagePath: icon,
              width: 28.w,
              height: 28.w,
              fit: BoxFit.contain,
              isAsset: true,
            ),
         
      
            /// Prevent text overflow
            Expanded(
              child: CommonText(
                title,
                size: 14,
                color: AppColors.textSecondary,
                maxline: 1,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
