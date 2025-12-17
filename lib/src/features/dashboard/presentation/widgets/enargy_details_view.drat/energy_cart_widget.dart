


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/features/dashboard/data/energy_model.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';



class EnergyChartCard extends StatelessWidget {
  final String totalPower;
  final List<EnergyDataItem> items;

  const EnergyChartCard({
    super.key,
    required this.totalPower,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.gray),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CommonText("Energy Chart", size: 14, isBold: true),
              CommonText(totalPower, size: 21, isBold: true),
            ],
          ),

          SizedBox(height: 12.h),

          /// Data rows
          ...items.map((e) => EnergyDataRow(item: e)),
        ],
      ),
    );
  }
}

class EnergyDataRow extends StatelessWidget {
  final EnergyDataItem item;

  const EnergyDataRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gray),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          /// Indicator + Title
          SizedBox(
            width: 60.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 10.w,
                  height: 10.w,
                  decoration: BoxDecoration(
                    color: item.color,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 6.h),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: CommonText(item.title, size: 13, isBold: true),
                ),
              ],
            ),
          ),

          /// Divider
          Container(width: 1, height: 40.h, color: AppColors.gray),

          SizedBox(width: 8.w),

          /// Data + Cost
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _infoRow("Data", item.data),
                _infoRow("Cost", item.cost),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Row(
      children: [
        CommonText("$label   : ", size: 12),
        Expanded(child: CommonText(value, size: 12, isBold: true, maxline: 1)),
      ],
    );
  }
}

