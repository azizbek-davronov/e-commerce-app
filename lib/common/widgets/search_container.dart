import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    required this.padding,
  });

  final String text;
  final IconData? icon;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: DeviceUtility.getScreenWidth(context),
        padding: const EdgeInsets.all(BrandSizes.md),
        decoration: BoxDecoration(
          color: BrandColors.white,
          borderRadius: BorderRadius.circular(BrandSizes.cardRadiusLG),
          border: Border.all(color: BrandColors.grey),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: BrandColors.darkerGrey,
            ),
            SizedBox(
              width: BrandSizes.spaceBetweenItems,
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: BrandColors.darkerGrey),
            ),
          ],
        ),
      ),
    );
  }
}
