import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/features/dashboard/data/model/electricity_data_card_model.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/dashboard_widgets/dashboard_bottom_menu.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/dashboard_widgets/electricity_card.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/dashboard_widgets/summery_sld_data_tabbar.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/others/dashboard_appbar.dart';
import 'package:scube_task/src/shared/themes/colors.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final List<ElectricityDataCardModel> dommyData = [
    ElectricityDataCardModel(
      colorHex: "0xFF78C6FF",
      data1: 55505.63,
      data2: 55505.63,
      isActive: true,
      title: "Data View",
      image: "assest/image/solar.png",
    ),
    ElectricityDataCardModel(
      colorHex: "0xFFFB902E",
      data1: 55505.63,
      data2: 55505.63,
      isActive: true,
      title: "Data View 2",
      image: "assest/image/radio.png",
    ),
    ElectricityDataCardModel(
      colorHex: "0xFF78C6FF",
      data1: 55505.63,
      data2: 55505.63,
      isActive: false,
      title: "Data View 3",
      image: "assest/image/transformar.png",
    ),
    ElectricityDataCardModel(
      colorHex: "0xFFFB902E",
      data1: 55505.63,
      data2: 55505.63,
      isActive: true,
      title: "Data View 2",
      image: "assest/image/radio.png",
    ),
    ElectricityDataCardModel(
      colorHex: "0xFF78C6FF",
      data1: 55505.63,
      data2: 55505.63,
      isActive: false,
      title: "Data View 3",
      image: "assest/image/transformar.png",
    ),
  ];

  final ValueNotifier<int> selectedTabIndexNotifier = ValueNotifier<int>(0);

  final ValueNotifier<bool> isSourceSelectedNotifier = ValueNotifier<bool>(
    true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBG,
      appBar: CommonDashboardAppBar("SCM"),
      body: ListView(
        padding: EdgeInsets.all(12.w),
        children: [
          ValueListenableBuilder(
            valueListenable: selectedTabIndexNotifier,
            builder: (context, selectedTabIndex, child) {
              return SummerySLDDataTabbar(
                selectedIndex: selectedTabIndex,
                onTabChanged: (index) {
                  selectedTabIndexNotifier.value = index;
                },
              );
            },
          ),
          Divider(color: AppColors.gray, height: 1, thickness: 1),
          ValueListenableBuilder(
            valueListenable: isSourceSelectedNotifier,
            builder: (context, isSourceSelected, child) {
              return ElectricityCard(
                isSourceSelected: isSourceSelected,
                onSwitchChanged: (value) {
                  isSourceSelectedNotifier.value = value;
                },
                dataList: dommyData,
              );
            },
          ),
          SizedBox(height: 14.h),
          const DashboardBottomMenu(),
        ],
      ),
    );
  }
}
