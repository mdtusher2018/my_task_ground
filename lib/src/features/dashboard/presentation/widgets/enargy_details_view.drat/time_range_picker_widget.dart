

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';

class DateRangeSearchRow extends StatefulWidget {
  final Function(DateTimeRange) onSearch;

  const DateRangeSearchRow({super.key, required this.onSearch});

  @override
  State<DateRangeSearchRow> createState() => _DateRangeSearchRowState();
}

class _DateRangeSearchRowState extends State<DateRangeSearchRow> {
  DateTime? fromDate;
  DateTime? toDate;

  Future<void> pickFromDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: fromDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() {
        fromDate = picked;
      });
    }
  }

  Future<void> pickToDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: toDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() {
        toDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Row(
        children: [
          /// From Date
          Expanded(
            child: GestureDetector(
              onTap: pickFromDate,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(color: AppColors.gray),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CommonText(
                        fromDate != null
                            ? "${fromDate!.day}-${fromDate!.month}-${fromDate!.year}"
                            : "From Date",
                        size: 14,
                        color: fromDate != null ? AppColors.black : AppColors.gray,
                      ),
                    ),
                       Icon(Icons.calendar_today, size: 20, color: AppColors.gray),
                   
                  ],
                ),
              ),
            ),
          ),
      
          SizedBox(width: 10.w),
      
          /// To Date
          Expanded(
            child: GestureDetector(
              onTap: pickToDate,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(color: AppColors.gray),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  children: [
                    
                    
                    Expanded(
                      child: CommonText(
                        toDate != null
                            ? "${toDate!.day}-${toDate!.month}-${toDate!.year}"
                            : "To",
                        size: 14,
                        color: toDate != null ? AppColors.black : AppColors.gray,
                      
                      ),
                    ),
                    Icon(Icons.calendar_today, size: 20, color: AppColors.gray),
                  ],
                ),
              ),
            ),
          ),
      
          SizedBox(width: 10.w),
      
          /// Search button
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              
              color: AppColors.mainBG,
              borderRadius: BorderRadius.circular(12.r),
      border: Border.all(color: AppColors.primary)
            ),
            child: GestureDetector(
              onTap: () {
                if (fromDate != null && toDate != null) {
                  widget.onSearch(DateTimeRange(start: fromDate!, end: toDate!));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please select both From and To dates")),
                  );
                }
              },
              child: Icon(Icons.search, color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
