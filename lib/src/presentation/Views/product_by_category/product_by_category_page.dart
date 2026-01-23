import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';
import 'package:scube_task/src/presentation/Views/product_by_category/bloc/product_by_category_bloc.dart';
import 'package:scube_task/src/presentation/Views/product_by_category/bloc/product_by_category_event.dart';
import 'package:scube_task/src/presentation/Views/product_by_category/bloc/product_by_category_state.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/shared/components/common_text.dart';
import 'package:scube_task/src/presentation/shared/widgets/product_card.dart';
import 'package:scube_task/src/presentation/shared/widgets/search_bar.dart';

class ProductByCategoryPage extends StatelessWidget {
  const ProductByCategoryPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<ProductByCategoryBloc>()..add(FetchProductByCategoryData(id)),
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: _ProductAppBar(),
        body: SafeArea(
          child: BlocBuilder<ProductByCategoryBloc, ProductByCategoryState>(
            builder: (context, state) {
              if (state is ProductByCategoryInitial) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is ProductByCategoryLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is ProductByCategoryError) {
                return Center(child: Text(state.message));
              }
              if (state is ProductByCategoryLoaded) {
                final productsData = state.ProductByCategory.products;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 12.h),
                       CommonSearchBar(),

                      SizedBox(height: 12.h),
                      _ProductGrid(productsData),
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

class _ProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ProductAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.mainBG,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
 
      leading: Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: CircleAvatar(
          backgroundColor: Colors.orange,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      title: const CommonText("All Products", size: 16),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 10.h);
}
