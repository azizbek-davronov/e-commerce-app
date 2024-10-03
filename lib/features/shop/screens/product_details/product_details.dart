import 'package:e_commerce_app/common/widgets/curved_edges.dart';
import 'package:e_commerce_app/common/widgets/custom_appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_choice_chip.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/cart/cart.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            horizontal: BrandSizes.md, vertical: BrandSizes.md / 2),
        decoration: BoxDecoration(
          color: HelperFunctions.isDarkMode(context)
              ? BrandColors.darkerGrey
              : BrandColors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(BrandSizes.cardRadiusLG),
            topRight: Radius.circular(BrandSizes.cardRadiusLG),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                RoundedContainer(
                  height: 48,
                  width: 48,
                  radius: 24,
                  backgroundColor: BrandColors.black,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.minus),
                    color: BrandColors.white,
                  ),
                ),
                SizedBox(
                  width: BrandSizes.spaceBetweenItems / 2,
                ),
                SizedBox(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '2',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                SizedBox(
                  width: BrandSizes.spaceBetweenItems / 2,
                ),
                RoundedContainer(
                  height: 48,
                  width: 48,
                  radius: 24,
                  backgroundColor: BrandColors.black,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.add),
                    color: BrandColors.white,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(CartScreen());
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(BrandSizes.md),
                backgroundColor: BrandColors.black,
                side: BorderSide(color: BrandColors.black),
              ),
              child: Text('Add To Cart'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image
            ClipPath(
              clipper: CurvedEdges(),
              child: Container(
                color: dark ? BrandColors.darkerGrey : BrandColors.light,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(BrandImages.productImage1),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    CustomAppBar(
                      showBackArrow: true,
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Iconsax.heart5),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: BrandSizes.spaceBetweenSections / 2),

            // product image slider
            SizedBox(
              height: 72,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                separatorBuilder: (_, __) =>
                    const SizedBox(width: BrandSizes.spaceBetweenItems),
                itemCount: 12,
                itemBuilder: (_, index) => RoundedImage(
                    width: 72, imageUrl: BrandImages.productImage2),
              ),
            ),
            SizedBox(height: BrandSizes.spaceBetweenSections / 2),

            // product details
            Padding(
              padding: EdgeInsets.symmetric(horizontal: BrandSizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Iconsax.star5,
                            color: Colors.amber,
                          ),
                          SizedBox(width: BrandSizes.spaceBetweenItems / 2),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '5.0 ',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                TextSpan(
                                  text: '(256)',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                      ),
                    ],
                  ),

                  // price
                  Row(
                    children: [
                      // sale tag
                      RoundedContainer(
                        radius: BrandSizes.sm,
                        backgroundColor: BrandColors.secondary.withOpacity(0.8),
                        padding: EdgeInsets.symmetric(
                          horizontal: BrandSizes.sm,
                          vertical: BrandSizes.xs,
                        ),
                        child: Text(
                          '25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: BrandColors.black),
                        ),
                      ),
                      SizedBox(width: BrandSizes.spaceBetweenItems),

                      // price
                      Text(
                        '\$180',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: BrandSizes.spaceBetweenItems),

                      // sale price
                      Text(
                        '\$135',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: BrandSizes.spaceBetweenItems),

                  // brand
                  Row(
                    children: [
                      Text(
                        'Nike',
                        style: Theme.of(context).textTheme.titleLarge,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        width: BrandSizes.xs,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: BrandColors.primary,
                      ),
                    ],
                  ),
                  SizedBox(height: BrandSizes.spaceBetweenItems),

                  // title
                  Text(
                    'Air Jordan 1 Retro High OG "Midnight Navy"',
                    style: Theme.of(context).textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: BrandSizes.spaceBetweenItems),

                  // stock status
                  Row(
                    children: [
                      Text(
                        'Stock:',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        width: BrandSizes.spaceBetweenItems,
                      ),
                      Text(
                        'In Stock',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  SizedBox(height: BrandSizes.spaceBetweenItems),

                  // attributes
                  Column(
                    children: [
                      RoundedContainer(
                        padding: EdgeInsets.all(BrandSizes.md),
                        backgroundColor:
                            dark ? BrandColors.darkerGrey : BrandColors.grey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Variation:',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                SizedBox(
                                  width: BrandSizes.spaceBetweenSections,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Price:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                        SizedBox(
                                          width: BrandSizes.spaceBetweenItems,
                                        ),

                                        // actual price
                                        Text(
                                          '\$180',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .apply(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                        ),
                                        SizedBox(
                                          width: BrandSizes.spaceBetweenItems,
                                        ),

                                        // sale price
                                        Text(
                                          '\$135',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                      ],
                                    ),

                                    // stock status
                                    Row(
                                      children: [
                                        Text(
                                          'Stock:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                        SizedBox(
                                          width: BrandSizes.spaceBetweenItems,
                                        ),
                                        Text(
                                          'In Stock',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: BrandSizes.spaceBetweenItems / 2,
                            // ),

                            // variation description
                            // Text(
                            //   '',
                            //   style: Theme.of(context).textTheme.titleSmall,
                            //   overflow: TextOverflow.ellipsis,
                            //   maxLines: 4,
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(height: BrandSizes.spaceBetweenItems),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SectionHeading(
                            title: 'Color',
                            showActionButton: false,
                          ),
                          SizedBox(
                            height: BrandSizes.spaceBetweenItems,
                          ),
                          Wrap(
                            spacing: 8,
                            children: [
                              CustomChoiceChip(
                                text: 'Red',
                                selected: false,
                                onSelected: (value) {},
                              ),
                              CustomChoiceChip(
                                text: 'Green',
                                selected: false,
                                onSelected: (value) {},
                              ),
                              CustomChoiceChip(
                                text: 'Blue',
                                selected: true,
                                onSelected: (value) {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: BrandSizes.spaceBetweenItems,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SectionHeading(
                            title: 'Size',
                            showActionButton: false,
                          ),
                          SizedBox(
                            height: BrandSizes.spaceBetweenItems,
                          ),
                          Wrap(
                            spacing: 8,
                            children: [
                              CustomChoiceChip(
                                text: '40',
                                selected: false,
                                onSelected: (value) {},
                              ),
                              CustomChoiceChip(
                                text: '41',
                                selected: false,
                                onSelected: (value) {},
                              ),
                              CustomChoiceChip(
                                text: '42',
                                selected: true,
                                onSelected: (value) {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: BrandSizes.spaceBetweenSections,
                  ),

                  // checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(
                    height: BrandSizes.spaceBetweenSections,
                  ),

                  // description
                  ReadMoreText(
                    'The Air Jordan 1 Retro High remakes the classic sneaker, giving you a fresh look with a familiar feel. Premium materials with new colors and textures give modern expression to an all-time favorite.',
                    trimLines: 1,
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
                    height: BrandSizes.spaceBetweenSections,
                  ),

                  // reviews
                  Divider(),
                  SizedBox(
                    height: BrandSizes.spaceBetweenItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(
                        title: 'Reviews (256)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () {
                          Get.to(ProductReviewsScreen());
                        },
                        icon: Icon(Iconsax.arrow_right_3),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: BrandSizes.spaceBetweenSections,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
