import 'package:e_commerce_app/common/widgets/brand_showcase.dart';
import 'package:e_commerce_app/common/widgets/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(BrandSizes.defaultSpace),
          child: Column(
            children: [
              // brands
              BrandShowcase(
                images: [
                  BrandImages.productImage1,
                  BrandImages.productImage2,
                  BrandImages.productImage3,
                ],
              ),
              SizedBox(height: BrandSizes.spaceBetweenItems),

              // products
              SectionHeading(
                title: 'You Might Like',
                onPressed: () {},
              ),
              SizedBox(height: BrandSizes.spaceBetweenItems),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
