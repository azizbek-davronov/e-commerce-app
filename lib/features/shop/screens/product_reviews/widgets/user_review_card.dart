import 'package:e_commerce_app/common/widgets/custom_rating_bar_indicator.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // user
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Iconsax.user),
                ),
                SizedBox(
                  width: BrandSizes.spaceBetweenItems,
                ),
                Text(
                  'Azizbek Davronov',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        SizedBox(
          height: BrandSizes.spaceBetweenItems,
        ),

        // review
        Row(
          children: [
            CustomRatingBarIndicator(rating: 5),
            SizedBox(
              width: BrandSizes.spaceBetweenItems,
            ),
            Text(
              'Jul 7, 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: BrandSizes.spaceBetweenItems,
        ),
        ReadMoreText(
          'This is customer review. The text will be trimmed after the second line.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Read More',
          trimExpandedText: ' Read Less',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: BrandSizes.spaceBetweenItems,
        ),

        // company reply
        RoundedContainer(
          backgroundColor: dark ? BrandColors.darkerGrey : BrandColors.grey,
          child: Padding(
            padding: EdgeInsets.all(BrandSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Company Name',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Jul 7, 2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(
                  height: BrandSizes.spaceBetweenItems,
                ),
                ReadMoreText(
                  'This is company reply. The text will be trimmed after the second line.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Read More',
                  trimExpandedText: ' Read Less',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: BrandSizes.spaceBetweenSections,
        ),
      ],
    );
  }
}
