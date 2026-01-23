import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/core/router/routes.dart';
import 'package:scube_task/src/domain/entites/common_entity/category_entity.dart';
import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';
import 'package:scube_task/src/presentation/Views/home/bloc/home_bloc.dart';
import 'package:scube_task/src/presentation/Views/home/bloc/home_event.dart';
import 'package:scube_task/src/presentation/Views/home/bloc/home_state.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/shared/components/common_image.dart';
import 'package:scube_task/src/presentation/shared/components/common_text.dart';
import 'package:scube_task/src/presentation/shared/widgets/product_card.dart';
import 'package:scube_task/src/presentation/shared/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>()..add(FetchHomeData()),
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,

        body: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeInitial) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is HomeLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is HomeError) return Center(child: Text(state.message));
              if (state is HomeLoaded) {
                final homeData = state.home;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 12.h),
                      const CommonSearchBar(),
                      SizedBox(height: 20.h),
                      _CategorySection(homeData.categories),
                      SizedBox(height: 20.h),
                      const _NewArrivalHeader(),
                      SizedBox(height: 12.h),
                      _ProductGrid(homeData.newArrivals),
                    ],
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}


class _CategorySection extends StatelessWidget {
  final List<CategoryEntity> categories;
  const _CategorySection(this.categories);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CommonText("Categories", size: 16, isBold: true),
              CommonText("See all", size: 16, color: Colors.grey),
            ],
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 100.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return _CategoryItem(
                  title: categories[index].title,
                  icon: categories[index].icon,
                  id: categories[index].id,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String title;
  final String icon;
  final int id;

  const _CategoryItem({
    required this.title,
    required this.icon,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        onTap: () {
          context.push(AppRoutes.produceByCategory, extra: {'id': id.toString()});
        },
        child: Column(
          children: [
            Container(
              height: 60.r,
              width: 60.r,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xffFFF4DC),
                shape: BoxShape.circle,
              ),
              child: CommonImage(imagePath: icon, fit: BoxFit.contain),
            ),
            SizedBox(height: 6.h),
            SizedBox(
              height: 30.h,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: CommonText(title, size: 12, color: AppColors.gray),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NewArrivalHeader extends StatelessWidget {
  const _NewArrivalHeader();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CommonText("New Arrivals", size: 16, isBold: true),
          Icon(Icons.tune),
        ],
      ),
    );
  }
}

class _ProductGrid extends StatelessWidget {
  final List<ProductEntity> products;
  const _ProductGrid(this.products);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: 10.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          childAspectRatio: 0.65,
        ),
        itemCount: products.length,
        itemBuilder: (_, index) => ProductCard(products[index]),
      ),
    );
  }
}