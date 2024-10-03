import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/rounded_image.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: [
            RoundedImage(
              imageUrl: 'assets/images/banners/promo-banner-1.jpg',
            ),
            RoundedImage(
              imageUrl: 'assets/images/banners/promo-banner-2.jpg',
            ),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: BrandSizes.spaceBetweenItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 2; i++)
                Container(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: controller.carouselCurrentIndex.value == i
                        ? BrandColors.primary
                        : BrandColors.grey,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
