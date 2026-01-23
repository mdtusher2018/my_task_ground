import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/core/router/routes.dart';
import 'package:scube_task/src/core/utils/image_utils.dart';
import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';
import 'package:scube_task/src/presentation/Views/product_by_category/bloc/product_by_category_bloc.dart';
import 'package:scube_task/src/presentation/Views/product_by_category/bloc/product_by_category_event.dart';
import 'package:scube_task/src/presentation/Views/product_by_category/bloc/product_by_category_state.dart';
import 'package:scube_task/src/presentation/shared/themes/colors.dart';
import 'package:scube_task/src/presentation/shared/widgets/common_image.dart';
import 'package:scube_task/src/presentation/shared/widgets/common_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                      const _SearchBar(),

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

class _SearchBar extends StatelessWidget {
  const _SearchBar();

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
        itemBuilder: (_, index) => _ProductCard(products[index]),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final ProductEntity product;
  const _ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoutes.produceDetails, extra: {'slug': product.slug});
      },
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: CommonImage(
                      imagePath: getFullImagePath(product.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 6.h),

                RatingBarIndicator(
                  rating: product.rating,
                  itemBuilder: (context, index) =>
                      const Icon(Icons.star, color: Colors.orange),
                  itemCount: 5,
                  itemSize: 18.sp,
                  direction: Axis.horizontal,
                ),

                SizedBox(height: 6.h),
                CommonText(product.name, size: 13, isBold: true, maxline: 2),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    CommonText(
                      "\$${product.price}",
                      size: 16,
                      color: AppColors.red,
                      isBold: true,
                    ),
                    SizedBox(width: 6.w),
                    if (product.oldPrice != null)
                      CommonText(
                        "\$${product.oldPrice}",
                        color: Colors.grey,
                        haveLineThrow: true,
                      ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite,
                size: 18.sp,
                color: AppColors.gray.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ProductAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary.withOpacity(0.15),
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
