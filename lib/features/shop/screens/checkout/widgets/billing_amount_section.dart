import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$180', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: BrandSizes.spaceBetweenItems / 2),

        // shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$9', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: BrandSizes.spaceBetweenItems / 2),

        // tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$9', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: BrandSizes.spaceBetweenItems / 2),

        // order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$198', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: BrandSizes.spaceBetweenItems / 2),
      ],
    );
  }
}
