import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return RoundedContainer(
      padding: EdgeInsets.all(BrandSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? BrandColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? BrandColors.darkerGrey
              : BrandColors.grey,
      margin: EdgeInsets.only(bottom: BrandSizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? BrandColors.light
                      : BrandColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Epam Systems Uzbekistan',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: BrandSizes.sm / 2),
              Text(
                '+998 00 000 00 00',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: BrandSizes.sm / 2),
              Text(
                'Oybek Street 18/1, Tashkent, Uzbekistan',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
