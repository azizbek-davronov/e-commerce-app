import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        SizedBox(height: BrandSizes.spaceBetweenItems / 2),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              radius: 0,
              backgroundColor: dark ? BrandColors.light : BrandColors.white,
              padding: EdgeInsets.all(BrandSizes.sm),
              child: Image(
                image: AssetImage(BrandImages.visa),
                fit: BoxFit.contain,
              ),
            ),
            // SizedBox(width: BrandSizes.spaceBetweenItems),
            // // Text('Visa', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
