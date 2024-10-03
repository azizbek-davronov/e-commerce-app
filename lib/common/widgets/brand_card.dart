import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: EdgeInsets.all(BrandSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // icon
            Flexible(
              child: Container(
                width: 56,
                height: 56,
                padding: EdgeInsets.all(BrandSizes.sm),
                decoration: BoxDecoration(
                  color: HelperFunctions.isDarkMode(context)
                      ? BrandColors.black
                      : BrandColors.white,
                  borderRadius: BorderRadius.circular(56),
                ),
                child: Image(
                  image: AssetImage(
                    'assets/icons/icons8-nike-50.png',
                  ),
                  color: HelperFunctions.isDarkMode(context)
                      ? BrandColors.white
                      : BrandColors.black,
                ),
              ),
            ),
            SizedBox(
              width: BrandSizes.spaceBetweenItems/2,
            ),

            // text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Nike',
                        style: Theme.of(context).textTheme.labelLarge,
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
                  Text(
                    '64 products',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
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
