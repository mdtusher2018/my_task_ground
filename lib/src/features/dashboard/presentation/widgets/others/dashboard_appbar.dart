import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_image.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';

class CommonDashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CommonDashboardAppBar(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: const BackButton(),
        title:  CommonText(title, size: 18),
        centerTitle: true,
        actions: [
          CommonImage(imagePath: "assest/icons/notification.png",width: 24,height: 24,isAsset: true,)
          ,SizedBox(width: 16.w,),
        ],
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
