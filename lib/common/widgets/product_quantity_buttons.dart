import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityButtons extends StatelessWidget {
  const ProductQuantityButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(      
      children: [
        RoundedContainer(
          height: 32,
          width: 32,
          radius: 16,
          backgroundColor: HelperFunctions.isDarkMode(context)
              ? BrandColors.darkerGrey
              : BrandColors.light,
          child: IconButton(
            iconSize: 16,
            onPressed: () {},
            icon: Icon(Iconsax.minus),
            color: HelperFunctions.isDarkMode(context)
                ? BrandColors.white
                : BrandColors.black,
          ),
        ),
        SizedBox(
          width: BrandSizes.spaceBetweenItems,
        ),
        SizedBox(
          height: 32,
          width: 32,
          child: Center(
            child: Text(
              '2',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        SizedBox(
          width: BrandSizes.spaceBetweenItems,
        ),
        RoundedContainer(
          height: 32,
          width: 32,
          radius: 16,
          backgroundColor: HelperFunctions.isDarkMode(context)
              ? BrandColors.darkerGrey
              : BrandColors.light,
          child: IconButton(
            iconSize: 16,
            onPressed: () {},
            icon: Icon(Iconsax.add),
            color: HelperFunctions.isDarkMode(context)
                ? BrandColors.white
                : BrandColors.black,
          ),
        ),
      ],
    );
  }
}
