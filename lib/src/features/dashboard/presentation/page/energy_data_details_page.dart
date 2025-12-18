import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/enargy_details_view.drat/data_view_section.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/enargy_details_view.drat/radio_button_widget.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/enargy_details_view.drat/revenue_view.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/others/dashboard_appbar.dart';
import 'package:scube_task/src/shared/themes/colors.dart';

class DataViewPage extends StatefulWidget {
  const DataViewPage({super.key});

  @override
  State<DataViewPage> createState() => _DataViewPageState();
}

class _DataViewPageState extends State<DataViewPage> {
  bool showDataView = true; // true = DataView, false = RevenueView

  void toggleView(bool isDataView) {
    setState(() {
      showDataView = isDataView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBG,
      appBar: CommonDashboardAppBar("SCM"),
      body: Stack(
        children: [
          showDataView ? const DataViewSection() : const RevenueViewSection(),

          Positioned(
            top: 10.h,
            left: 32.w,
            right: 32.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
                border: Border.all(color: AppColors.gray, width: 1.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => toggleView(true),
                    child: commonRadioButon("Data View", showDataView),
                  ),
                  GestureDetector(
                    onTap: () => toggleView(false),
                    child: commonRadioButon("Revenue View", !showDataView),
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
