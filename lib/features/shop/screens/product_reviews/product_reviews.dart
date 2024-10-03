import 'package:e_commerce_app/common/widgets/custom_appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_rating_bar_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Reviews And Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BrandSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text('data'),
              // SizedBox(height: BrandSizes.spaceBetweenItems),

              // overall product ratings
              OverallProductRating(),
              CustomRatingBarIndicator(rating: 4.5),
              SizedBox(height: BrandSizes.spaceBetweenItems/2),
              Text('256', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: BrandSizes.spaceBetweenItems),

              // user reviews list
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
