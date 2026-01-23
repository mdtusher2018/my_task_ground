import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/presentation/shared/components/common_text.dart';

class CommonSearchBar extends StatelessWidget {
  const CommonSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 8.w),
          const Expanded(
            child: CommonText("Search products", color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
