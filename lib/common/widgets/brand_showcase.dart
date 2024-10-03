import 'package:e_commerce_app/common/widgets/brand_card.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/rounded_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: EdgeInsets.all(BrandSizes.md),
      showBorder: true,
      borderColor: BrandColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: BrandSizes.spaceBetweenItems),
      child: Column(
        children: [
          BrandCard(
            showBorder: false,
          ),
          SizedBox(height: BrandSizes.spaceBetweenItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: images.map((image) => brandTopProduct(image)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProduct(String image) {
    return RoundedImage(
      height: 100,
      imageUrl: image,
    );
  }
}
