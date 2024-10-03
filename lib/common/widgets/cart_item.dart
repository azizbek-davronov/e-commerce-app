import 'package:e_commerce_app/common/widgets/product_quantity_buttons.dart';
import 'package:e_commerce_app/common/widgets/rounded_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.showButtons,
  });

  final bool showButtons;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          imageUrl: BrandImages.productImage1,
          width: 60,
          height: 60,
        ),
        SizedBox(width: BrandSizes.spaceBetweenItems),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Flexible(
                child: Text(
                  'Air Jordan 1 Retro High OG "Midnight Navy"',
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SizedBox(height: BrandSizes.spaceBetweenItems / 2),

              // brand
              Row(
                children: [
                  Text(
                    'Nike',
                    style: Theme.of(context).textTheme.bodySmall,
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
              SizedBox(height: BrandSizes.spaceBetweenItems / 2),

              // attributes
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Color: ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: 'Midnight Navy',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Size: ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: '42',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: BrandSizes.spaceBetweenItems / 2),

              if (showButtons)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 6,
                      child: ProductQuantityButtons(),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        '\$180',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
