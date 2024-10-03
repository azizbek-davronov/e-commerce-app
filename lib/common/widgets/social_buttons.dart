import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BrandColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              size: BrandSizes.iconMD,
              SocialMediaIcons.google,
            ),
          ),
        ),
        const SizedBox(
          width: BrandSizes.spaceBetweenItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BrandColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              size: BrandSizes.iconMD,
              SocialMediaIcons.facebook,
            ),
          ),
        ),
      ],
    );
  }
}
