import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/enargy_details_view.drat/semi_circle_painer_widget.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';

class RevenueViewSection extends StatefulWidget {
  const RevenueViewSection({super.key});

  @override
  State<RevenueViewSection> createState() => _RevenueViewSectionState();
}

class _RevenueViewSectionState extends State<RevenueViewSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,

      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        border: BorderDirectional(
          top: BorderSide(width: 2, color: AppColors.gray),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(14.w),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 160.h,
                    width: 160.w,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        /// Gauge
                        CustomPaint(
                          size: Size(160.r, 160.r),
                          painter: SemiCirclePainter(percentage: 80),
                        ),

                        /// Safe text area
                        Container(
                          width: 160.r,
                          height: 160.r,

                          padding: EdgeInsets.all(30),
                          child: FittedBox(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                CommonText("8845555", size: 14, isBold: true),
                                CommonText("tk", size: 12),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: AppColors.gray, width: 1),
                    ),
                    child: Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        tilePadding: EdgeInsets.symmetric(horizontal: 16.w),
                        childrenPadding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 8.h,
                        ),
                        leading: Icon(Icons.bar_chart, color: AppColors.gray),
                        trailing: AnimatedRotation(
                          turns: isExpanded
                              ? 0.5
                              : 0, // Optional: rotates the icon
                          duration: const Duration(milliseconds: 200),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.keyboard_double_arrow_down_rounded,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        title: CommonText(
                          "Data & Cost Info",
                          size: 14,
                          isBold: true,
                          
                        ),
                        children: const [
                          DataCostItem(index: 1),
                          DataCostItem(index: 2),
                          DataCostItem(index: 3),
                          DataCostItem(index: 4),
                        ],
                        onExpansionChanged: (expanded) {
                          setState(() {
                            isExpanded = expanded;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataCostItem extends StatelessWidget {
  final int index;

  const DataCostItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CommonText(
                "Data $index : ",
                size: 12,
                color: AppColors.textSecondary,
              ),
              CommonText("2798.50 (29.53%)", size: 12, isBold: true),
            ],
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              CommonText(
                "Cost $index : ",
                size: 12,
                color:AppColors.textSecondary,
              ),
              CommonText("35689 ৳", size: 12, isBold: true),
            ],
          ),
        ],
      ),
    );
  }
}
