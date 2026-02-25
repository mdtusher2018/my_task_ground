import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/domain/entites/product_entity.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/shared/components/common_image.dart';
import 'package:scube_task/src/presentation/shared/components/common_text.dart';


class ProductCard extends StatelessWidget {
  final ProductEntity product;
  const ProductCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(

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
                      imagePath: (product.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 6.h),

             

                SizedBox(height: 6.h),
                CommonText(product.title, size: 13, isBold: true, maxline: 2),
                SizedBox(height: 4.h),
                CommonText(
                  "\$${product.price}",
                  size: 16,
                  color: AppColors.red,
                  isBold: true,
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
