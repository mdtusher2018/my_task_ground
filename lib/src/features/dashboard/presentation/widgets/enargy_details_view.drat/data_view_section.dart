import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/features/dashboard/data/model/energy_model.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/enargy_details_view.drat/radio_button_widget.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/enargy_details_view.drat/energy_cart_widget.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/enargy_details_view.drat/semi_circle_painer_widget.dart';
import 'package:scube_task/src/features/dashboard/presentation/widgets/enargy_details_view.drat/time_range_picker_widget.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';

class DataViewSection extends StatefulWidget {
  const DataViewSection({super.key});

  @override
  State<DataViewSection> createState() => _DataViewSectionState();
}

class _DataViewSectionState extends State<DataViewSection> {
  bool showTodayData = false;
  DateTimeRange? selectedRange;

  /// Sample data for today
  final List<EnergyDataItem> sampleData = [
    EnergyDataItem(
      title: "Data A",
      color: Colors.blue,
      data: "2798.50 (29.53%)",
      cost: "35689 ৳",
    ),
    EnergyDataItem(
      title: "Data B",
      color: Colors.lightBlue,
      data: "72598.50 (35.39%)",
      cost: "5259689 ৳",
    ),
    EnergyDataItem(
      title: "Data C",
      color: Colors.purple,
      data: "6598.36 (83.90%)",
      cost: "5698756 ৳",
    ),
    EnergyDataItem(
      title: "Data D",
      color: Colors.orange,
      data: "6598.26 (36.59%)",
      cost: "356987 ৳",
    ),
  ];

  /// Example: dummy data for custom date (multiple days)
  List<List<EnergyDataItem>> get customDataList {
    return [
      // Day 1
      [
        EnergyDataItem(
          title: "Data A",
          color: Colors.blue,
          data: "3000.50 (30%)",
          cost: "36000 ৳",
        ),
        EnergyDataItem(
          title: "Data B",
          color: Colors.lightBlue,
          data: "72000.50 (36%)",
          cost: "5260000 ৳",
        ),
        EnergyDataItem(
          title: "Data C",
          color: Colors.purple,
          data: "6500.36 (84%)",
          cost: "5700000 ৳",
        ),
        EnergyDataItem(
          title: "Data D",
          color: Colors.orange,
          data: "6600.26 (37%)",
          cost: "357000 ৳",
        ),
      ],
      // Day 2
      [
        EnergyDataItem(
          title: "Data A",
          color: Colors.blue,
          data: "3100.50 (31%)",
          cost: "36500 ৳",
        ),
        EnergyDataItem(
          title: "Data B",
          color: Colors.lightBlue,
          data: "73000.50 (37%)",
          cost: "5270000 ৳",
        ),
        EnergyDataItem(
          title: "Data C",
          color: Colors.purple,
          data: "6700.36 (85%)",
          cost: "5710000 ৳",
        ),
        EnergyDataItem(
          title: "Data D",
          color: Colors.orange,
          data: "6700.26 (38%)",
          cost: "358000 ৳",
        ),
      ],
      // Day 3 (optional)
      [
        EnergyDataItem(
          title: "Data A",
          color: Colors.blue,
          data: "3200.50 (32%)",
          cost: "37000 ৳",
        ),
        EnergyDataItem(
          title: "Data B",
          color: Colors.lightBlue,
          data: "74000.50 (38%)",
          cost: "5280000 ৳",
        ),
        EnergyDataItem(
          title: "Data C",
          color: Colors.purple,
          data: "6800.36 (86%)",
          cost: "5720000 ৳",
        ),
        EnergyDataItem(
          title: "Data D",
          color: Colors.orange,
          data: "6800.26 (39%)",
          cost: "359000 ৳",
        ),
      ],
    ];
  }

  void toggleData(bool todaySelected) {
    setState(() {
      showTodayData = todaySelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
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
                        CustomPaint(
                          size: Size(160.r, 160.r),
                          painter: SemiCirclePainter(percentage: 50),
                        ),

                        Container(
                          width: 160.r,
                          height: 160.r,

                          padding: EdgeInsets.all(30),
                          child: FittedBox(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                CommonText("55.00", size: 18, isBold: true),
                                CommonText("kWh/Sqft", size: 12),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(),
                      GestureDetector(
                        onTap: () => toggleData(true),
                        child: commonRadioButon("Today Data", showTodayData),
                      ),
                      GestureDetector(
                        onTap: () => toggleData(false),
                        child: commonRadioButon(
                          "Custom Date Data",
                          !showTodayData,
                        ),
                      ),

                      SizedBox(),
                    ],
                  ),
                  SizedBox(height: 20.h),

                  if (!showTodayData) ...[
                    DateRangeSearchRow(
                      onSearch: (range) {
                        //Search will implement here
                      },
                    ),
                    SizedBox(height: 10.h),
                  ],
                  if (showTodayData)
                    EnergyChartCard(totalPower: "5.53 kw", items: sampleData)
                  else
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: customDataList.length,
                      itemBuilder: (context, index) {
                        final items = customDataList[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: EnergyChartCard(
                            totalPower: "5.53 kw",
                            items: items,
                          ),
                        );
                      },
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
