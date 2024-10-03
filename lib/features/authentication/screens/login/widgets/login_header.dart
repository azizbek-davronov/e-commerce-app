import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 150,
        ),
        Text(
          'Welcome Back!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: BrandSizes.sm,
        ),
        Text(
          'Discover limitless choices and unmatched convenience.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
