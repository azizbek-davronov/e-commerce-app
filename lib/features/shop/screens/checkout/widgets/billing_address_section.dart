import 'package:e_commerce_app/common/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Epam Systems Uzbekistan',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          height: BrandSizes.spaceBetweenItems / 2,
        ),
        Row(
          children: [
            Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            SizedBox(
              width: BrandSizes.spaceBetweenItems,
            ),
            Text(
              '+998 00 000 00 00',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: BrandSizes.spaceBetweenItems / 2,
        ),
        Row(
          children: [
            Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            SizedBox(
              width: BrandSizes.spaceBetweenItems,
            ),
            Text(
              'Oybek Street 18/1, Tashkent, Uzbekistan',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
        SizedBox(
          height: BrandSizes.spaceBetweenItems / 2,
        ),
      ],
    );
  }
}
