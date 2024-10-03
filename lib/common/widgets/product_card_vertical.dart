import 'package:e_commerce_app/common/widgets/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: BrandColors.darkGrey.withOpacity(0.1),
              blurRadius: 50,
              spreadRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(BrandSizes.productImageRadius),
          color: HelperFunctions.isDarkMode(context)
              ? BrandColors.darkerGrey
              : BrandColors.white,
        ),
        child: Column(
          children: [
            // RoundedContainer(
            //   // height: 180,
            //   // padding: const EdgeInsets.all(BrandSizes.sm),
            //   // backgroundColor: dark ? BrandColors.dark : BrandColors.light,
            //   child:
            // ),
            Stack(
              children: [
                // thumbnail image
                RoundedImage(
                  imageUrl: BrandImages.productImage1,
                ),

                // discount tag & favourite button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: RoundedContainer(
                        radius: BrandSizes.sm,
                        backgroundColor: BrandColors.secondary.withOpacity(0.8),
                        padding: EdgeInsets.symmetric(
                          horizontal: BrandSizes.sm,
                          vertical: BrandSizes.xs,
                        ),
                        child: Text(
                          '25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: BrandColors.black),
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.heart5,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: BrandSizes.spaceBetweenItems / 2,
            ),

            // details
            Padding(
              padding: const EdgeInsets.only(left: BrandSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Air Jordan 1 Retro High OG "Midnight Navy"',
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: BrandSizes.spaceBetweenItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        width: BrandSizes.xs,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: BrandColors.primary,
                        size: BrandSizes.iconXS,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: BrandSizes.sm),
                  child: Text(
                    '\$180',
                    style: Theme.of(context).textTheme.headlineMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: BrandColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(BrandSizes.cardRadiusMD),
                      bottomRight:
                          Radius.circular(BrandSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: BrandSizes.iconLG * 1.2,
                    height: BrandSizes.iconLG * 1.2,
                    child: Icon(
                      Iconsax.add,
                      color: BrandColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
