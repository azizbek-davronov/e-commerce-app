import 'package:e_commerce_app/common/widgets/category_button.dart';
import 'package:e_commerce_app/common/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: BrandSizes.defaultSpace),
      child: Column(
        children: [
          SectionHeading(
            title: 'Popular Categories',
            textColor: BrandColors.white,
            showActionButton: true,
          ),
          const SizedBox(
            height: BrandSizes.spaceBetweenItems,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryButton(
                  image: 'assets/icons/icons8-clothes-64.png',
                  title: 'Category',
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
