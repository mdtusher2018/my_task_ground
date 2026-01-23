import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/core/utils/image_utils.dart';
import 'package:scube_task/src/presentation/Views/product_details/bloc/product_details_bloc.dart';
import 'package:scube_task/src/presentation/Views/product_details/bloc/product_details_event.dart';
import 'package:scube_task/src/presentation/Views/product_details/bloc/product_details_state.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/shared/components/common_button.dart';
import 'package:scube_task/src/presentation/shared/components/common_text.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter_html/flutter_html.dart';

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
                            child: Center(
                              child: SizedBox(
                                height: 220.h,

                                child: ClipRRect(
                                  child: PhotoView(
                                    backgroundDecoration: const BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    imageProvider: NetworkImage(
                                      getFullImagePath(state.selectedImage),
                                    ),
                                    minScale: PhotoViewComputedScale.contained,
                                    maxScale:
                                        PhotoViewComputedScale.covered * 3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              state.product.gallery?.length ?? 0,
                              (index) {
                                final image = state.product.gallery?[index];
                                if(image==null)return SizedBox.shrink();
                                final isSelected =
                                    image.image == state.selectedImage;

                                return GestureDetector(
                                  onTap: () {
                                    context.read<ProductDetailsBloc>().add(
                                      SelectProductImage(image.image ?? ""),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 6.w,
                                    ),
                                    height: 50.r,
                                    width: 48.r,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: isSelected
                                            ? AppColors.primary
                                            : AppColors.gray,
                                        width: isSelected ? 2 : 0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.r),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4.r),
                                      child: Image.network(
                                        getFullImagePath(image.image ?? ""),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            _PriceSection(
                              price: state.product.price,
                              offerPrice: state.product.offerPrice,
                            ),
                            SizedBox(height: 8.h),

                            CommonText(
                              state.product.categoryName,
                              color: AppColors.textSecondary,
                            ),
                            SizedBox(height: 8.h),
                            CommonText(
                              state.product.name,
                              size: 16,
                              isBold: true,
                            ),
                            SizedBox(height: 10.h),
                            _RatingRow(
                              rating: state.product.rating,
                              totalReviews: state.product.totalReviews,
                            ),
                            SizedBox(height: 12.h),
                            CommonText(
                              state.product.shortDescription,
                              size: 12,
                              color: AppColors.textSecondary,
                            ),
                            SizedBox(height: 16.h),
                            _Introduction(state.product.longDescription),
                            SizedBox(height: 16.h),
                            _Features(state.product.features),
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

class _PriceSection extends StatelessWidget {
  final double price;
  final double? offerPrice;

  const _PriceSection({required this.price, required this.offerPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonText(
          "\$${offerPrice ?? price}",
          size: 22,
          isBold: true,
          color: Colors.red,
        ),
        if (offerPrice != null) ...[
          SizedBox(width: 8.w),
          CommonText(
            "\$$price",
            size: 14,
            color: AppColors.gray,
            haveLineThrow: true,
          ),
        ],
      ],
    );
  }
}

class _RatingRow extends StatelessWidget {
  const _RatingRow({required this.totalReviews, required this.rating});
  final int totalReviews;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
          rating: rating,
          itemCount: 6,
          itemBuilder: (_, __) => const Icon(Icons.star, color: Colors.orange),
          itemSize: 16.sp,
        ),
        SizedBox(width: 8.w),
        CommonText("$totalReviews Reviews", size: 12),
      ],
    );
  }
}

class _Introduction extends StatelessWidget {
  final String introduction;
  const _Introduction(this.introduction);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CommonText("Introduction", size: 14, isBold: true),
        SizedBox(height: 6),
        Html(data: introduction),
      ],
    );
  }
}

class _Features extends StatelessWidget {
  const _Features(this.features);
  final List<String> features;
  @override
  Widget build(BuildContext context) {
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
