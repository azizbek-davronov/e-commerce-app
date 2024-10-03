import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child:
                Text('4.5', style: Theme.of(context).textTheme.displayLarge)),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingProgressIndicator(
                text: '5',
                value: 0.9,
              ),
              RatingProgressIndicator(
                text: '4',
                value: 0.1,
              ),
              RatingProgressIndicator(
                text: '3',
                value: 0,
              ),
              RatingProgressIndicator(
                text: '2',
                value: 0,
              ),
              RatingProgressIndicator(
                text: '1',
                value: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
