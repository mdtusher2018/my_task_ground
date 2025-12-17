import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/config/router/routes.dart';
import 'package:scube_task/src/features/dashboard/data/electricity_data_card_model.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_image.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';

class ElectricityCard extends StatelessWidget {
  final bool isSourceSelected;
  final ValueChanged<bool> onSwitchChanged;
  final List<ElectricityDataCardModel> dataList;

  const ElectricityCard({
    super.key,
    required this.isSourceSelected,
    required this.onSwitchChanged,
    required this.dataList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
      ),
      child: Column(
        spacing: 8.h,
        children: [
          const CommonText(
            "Electricity",
            size: 16,
            color: AppColors.textSecondary,
            isBold: true,
          ),
          Divider(color: AppColors.gray),

          /// Circular Power
          Container(
            width: 130.w,
            height: 130.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.primary,
                width: 14.w,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CommonText("Total Power", size: 12),
                  CommonText("5.53 kw", size: 16, isBold: true),
                ],
              ),
            ),
          ),

          SizedBox(height: 12.h),

          SourceLoadSwitch(
            isSource: isSourceSelected,
            onChanged: onSwitchChanged,
          ),

          Divider(color: AppColors.gray, thickness: 1),

          SizedBox(
            height: 280.h,
            child: ListView.separated(
              itemCount: dataList.length,
              separatorBuilder: (_, __) => SizedBox(height: 8.h),
              itemBuilder: (_, index) {
                return ElectricityDataCard(data: dataList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
class SourceLoadSwitch extends StatelessWidget {
  final bool isSource;
  final ValueChanged<bool> onChanged;

  const SourceLoadSwitch({
    super.key,
    required this.isSource,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        color: AppColors.mainBG,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            alignment:
                isSource ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              height: 44.h,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
          ),
          Row(
            children: [
              _switchItem("Source", isSource, () => onChanged(true)),
              _switchItem("Load", !isSource, () => onChanged(false)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _switchItem(String text, bool active, VoidCallback onTap) {
    return Expanded(
      child: InkWell(
            onTap: onTap,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Center(
            child: CommonText(
              text,
              size: 14,
              isBold: active,
              color: active ? AppColors.white : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}

class ElectricityDataCard extends StatelessWidget {
  final ElectricityDataCardModel data;

  const ElectricityDataCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoutes.energyDataDetailsPage);
      },
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: AppColors.mainBG,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.gray),
        ),
        child: Row(
          children: [
            CommonImage(
              imagePath: data.image,
              width: 36.w,
              height: 36.w,
              isAsset: true,
            ),
            SizedBox(width: 8.w),
      
            /// TEXT WRAP FIX
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 12.w,
                        width: 12.w,
                        decoration: BoxDecoration(
                          color: Color(int.parse(data.colorHex)),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Flexible(
                        child: CommonText(
                          data.title,
                          size: 14,
                          maxline: 1,
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      CommonText(
                        data.isActive ? "(Active)" : "(Inactive)",
                        size: 12,
                        color:
                            data.isActive ? AppColors.primary : AppColors.red,
                      ),
                    ],
                  ),
                  CommonText("Data 1 : ${data.data1}", maxline: 1),
                  CommonText("Data 2 : ${data.data2}", maxline: 1),
                ],
              ),
            ),
      
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
