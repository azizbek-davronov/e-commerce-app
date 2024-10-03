import 'package:e_commerce_app/common/widgets/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/search_container.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_header.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(
                    height: BrandSizes.spaceBetweenSections,
                  ),
                  const SearchContainer(
                    text: 'SEARCH IN STORE',
                    padding: EdgeInsets.symmetric(
                        horizontal: BrandSizes.defaultSpace),
                  ),
                  const SizedBox(
                    height: BrandSizes.spaceBetweenSections,
                  ),
                  const HomeCategories(),
                  const SizedBox(height: BrandSizes.spaceBetweenSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(BrandSizes.defaultSpace),
              child: Column(
                children: [
                  PromoSlider(),
                  const SizedBox(
                    height: BrandSizes.spaceBetweenSections,
                  ),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
