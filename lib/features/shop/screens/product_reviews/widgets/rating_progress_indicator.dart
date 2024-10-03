import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 9,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 4,
            backgroundColor: BrandColors.grey,
            valueColor: AlwaysStoppedAnimation(BrandColors.primary),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }
}
