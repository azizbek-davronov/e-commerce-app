import 'package:e_commerce_app/common/widgets/cart_counter_icon.dart';
import 'package:e_commerce_app/common/widgets/custom_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/cart/cart.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextStrings.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: BrandColors.grey),
          ),
          Text(
            TextStrings.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: BrandColors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {Get.to(CartScreen());},
          iconColor: BrandColors.white,
        )
      ],
    );
  }
}