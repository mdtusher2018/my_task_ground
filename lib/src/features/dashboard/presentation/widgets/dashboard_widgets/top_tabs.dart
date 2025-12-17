import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';


class TopTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const TopTabs({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
      ),
      child: Row(
        children: [
          _TabItem(
            text: "Summery",
            active: selectedIndex == 0,
            onTap: () => onTabChanged(0),
          ),
          _TabItem(
            text: "SLD",
            active: selectedIndex == 1,
            onTap: () => onTabChanged(1),
          ),
          _TabItem(
            text: "Data",
            active: selectedIndex == 2,
            onTap: () => onTabChanged(2),
          ),
        ],
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String text;
  final bool active;
  final VoidCallback onTap;

  const _TabItem({
    required this.text,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: active ? AppColors.primary : Colors.transparent,
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: CommonText(
              text,
              size: 14,
              color: active ? AppColors.white : AppColors.textSecondary,
              isBold: active,
            ),
          ),
        ),
      ),
    );
  }
}
