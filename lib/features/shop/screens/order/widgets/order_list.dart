import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 12,
      separatorBuilder: (_, index) =>
          SizedBox(height: BrandSizes.spaceBetweenItems),
      itemBuilder: (_, index) => RoundedContainer(
        padding: EdgeInsets.all(BrandSizes.md),
        showBorder: true,
        backgroundColor: dark ? BrandColors.dark : BrandColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // row 1
            Row(
              children: [
                // icon
                Icon(Iconsax.ship),
                SizedBox(width: BrandSizes.spaceBetweenItems / 2),

                // status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: BrandColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        '2 Oct, 2024',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                IconButton(onPressed: () {}, icon: Icon(Iconsax.arrow_right_34))
              ],
            ),
            SizedBox(height: BrandSizes.spaceBetweenItems),

            // row 2
            Row(
              children: [
                // order
                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.tag),
                      SizedBox(width: BrandSizes.spaceBetweenItems / 2),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            '#256f2',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // shipping date
                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.calendar),
                      SizedBox(width: BrandSizes.spaceBetweenItems / 2),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shipping Date',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            '2 Nov 2024',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
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
