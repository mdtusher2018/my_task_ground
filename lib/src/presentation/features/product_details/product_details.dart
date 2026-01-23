import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/presentation/features/product_details/bloc/product_details_bloc.dart';
import 'package:scube_task/src/presentation/features/product_details/bloc/product_details_event.dart';
import 'package:scube_task/src/presentation/features/product_details/bloc/product_details_state.dart';
import 'package:scube_task/src/presentation/shared/themes/colors.dart';
import 'package:scube_task/src/presentation/shared/widgets/common_button.dart';
import 'package:scube_task/src/presentation/shared/widgets/common_text.dart';
import 'package:photo_view/photo_view.dart';

class ProductDetailsPage extends StatelessWidget {
  final String slug;
  const ProductDetailsPage({super.key, required this.slug});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const _AddToCartBar(),
      appBar: _ProductAppBar(),
      backgroundColor: AppColors.mainBG,
      body: BlocProvider(
        create: (_) =>
            getIt<ProductDetailsBloc>()..add(LoadProductDetails(slug)),

        child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
          builder: (context, state) {
            if (state is ProductDetailsLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ProductDetailsError) {
              return Center(child: Text(state.message));
            }

            if (state is ProductDetailsLoaded) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: AlignmentGeometry.bottomCenter,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 20.h),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withOpacity(0.15),
                            ),
                            child: Column(children: [const _ProductImage()]),
                          ),
                          SizedBox(height: 12.h),
                          const _ImagePreviewRow(),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            const _PriceSection(),
                            SizedBox(height: 8.h),

                            CommonText(
                              "MOBILE PHONES",
                              color: AppColors.textSecondary,
                            ),
                            SizedBox(height: 8.h),
                            CommonText(
                              "Samsung Galaxy Z Fold3 5G\n3 colors in 512GB",
                              size: 16,
                              isBold: true,
                            ),
                            SizedBox(height: 10.h),
                            const _RatingRow(),
                            SizedBox(height: 12.h),
                            const CommonText(
                              "It is a long established fact that a reader will be distracted by the readable.",
                              size: 12,
                              color: AppColors.textSecondary,
                            ),
                            SizedBox(height: 16.h),
                            const _Introduction(),
                            SizedBox(height: 16.h),
                            const _Features(),
                            SizedBox(height: 16.h),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return const SizedBox();
          },
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
      centerTitle: true,
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
      title: const CommonText("Popular Sells", size: 16, isBold: true),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(Icons.favorite, color: Colors.red),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 10.h);
}

class _ProductImage extends StatelessWidget {
  const _ProductImage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 220.h,

        child: ClipRRect(
          child: PhotoView(
            backgroundDecoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            imageProvider: const NetworkImage(
              "https://cdn.mos.cms.futurecdn.net/VFkJaCNyiKEig9zRQjVF26.jpg",
            ),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 3,
          ),
        ),
      ),
    );
  }
}

class _ImagePreviewRow extends StatelessWidget {
  const _ImagePreviewRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 6.w),
          height: 50.r,
          width: 48.r,
          decoration: BoxDecoration(
            color: Colors.white,

            border: Border.all(
              color: AppColors.gray.withOpacity(0.5),
              width: 1,
            ),
          ),
          child: const Icon(Icons.phone_android),
        ),
      ),
    );
  }
}

class _PriceSection extends StatelessWidget {
  const _PriceSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CommonText("\$6.99", size: 22, isBold: true, color: Colors.red),
        SizedBox(width: 8.w),
        const CommonText(
          "\$9.99",
          size: 14,
          color: Colors.grey,
          haveLineThrow: true,
        ),
      ],
    );
  }
}

class _RatingRow extends StatelessWidget {
  const _RatingRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
          rating: 6,
          itemCount: 6,
          itemBuilder: (_, __) => const Icon(Icons.star, color: Colors.orange),
          itemSize: 16.sp,
        ),
        SizedBox(width: 8.w),
        const CommonText("6 Reviews", size: 12),
      ],
    );
  }
}

class _Introduction extends StatelessWidget {
  const _Introduction();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CommonText("Introduction", size: 14, isBold: true),
        SizedBox(height: 6),
        CommonText(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
          size: 12,
          color: AppColors.textSecondary,
          maxline: 5,
        ),
      ],
    );
  }
}

class _Features extends StatelessWidget {
  const _Features();

  @override
  Widget build(BuildContext context) {
    final features = [
      "Slim body with metal cover",
      "Latest Intel Core i5-1135G7 processor",
      "8GB DDR4 RAM and fast 512GB PCIe SSD",
      "NVIDIA GeForce MX350 2GB GDDR5 graphics, NVIDIA GeForce MX350 2GB GDDR5 graphics,NVIDIA GeForce MX350 2GB GDDR5 graphics",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CommonText("Features :", size: 14, isBold: true),
        SizedBox(height: 8.h),
        ...features.map(
          (e) => Padding(
            padding: EdgeInsets.only(bottom: 6.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: const Icon(Icons.circle, size: 8),
                ),
                SizedBox(width: 8.w),
                Expanded(child: CommonText(e, size: 12, color: Colors.grey)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _AddToCartBar extends StatelessWidget {
  const _AddToCartBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              color: AppColors.gray.withOpacity(0.1),

              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Badge(
              label: CommonText("3", isBold: true),

              backgroundColor: AppColors.primary,
              child: const Icon(Icons.shopping_cart_outlined, size: 32),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(child: CommonButton("Add To Cart", boarderRadious: 0)),
        ],
      ),
    );
  }
}
