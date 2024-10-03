import 'package:e_commerce_app/common/widgets/cart_item.dart';
import 'package:e_commerce_app/common/widgets/custom_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/checkout.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(BrandSizes.md),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 9,
          separatorBuilder: (_, __) =>
              SizedBox(height: BrandSizes.spaceBetweenSections),
          itemBuilder: (_, index) => Column(
            children: [
              CartItem(showButtons: true),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BrandSizes.md),
        child: ElevatedButton(
            onPressed: () {
              Get.to(CheckoutScreen());
            },
            child: Text('Checkout \$180')),
      ),
    );
  }
}
