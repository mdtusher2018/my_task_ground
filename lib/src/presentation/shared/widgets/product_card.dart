import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/core/router/routes.dart';
import 'package:scube_task/src/core/utils/image_utils.dart';
import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/shared/components/common_image.dart';
import 'package:scube_task/src/presentation/shared/components/common_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ProductCard extends StatelessWidget {
  final ProductEntity product;
  const ProductCard(this.product);

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
