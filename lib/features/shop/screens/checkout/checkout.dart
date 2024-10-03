import 'package:e_commerce_app/common/widgets/custom_appbar.dart';
import 'package:e_commerce_app/common/widgets/promo_code_text_field.dart';
import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/success_screen.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(BrandSizes.md),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // // cart items
              // Flexible(
              //   flex: 5,
              //   child: ListView.separated(
              //     physics: AlwaysScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount: 9,
              //     separatorBuilder: (_, __) => SizedBox(height: BrandSizes.md),
              //     itemBuilder: (_, index) => Column(
              //       children: [
              //         CartItem(showButtons: false),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(height: BrandSizes.spaceBetweenSections),
          
              RoundedContainer(
                showBorder: true,
                backgroundColor: dark ? BrandColors.dark : BrandColors.white,
                padding: EdgeInsets.all(BrandSizes.md),
                child: PromoCodeTextField(),
              ),
              SizedBox(height: BrandSizes.spaceBetweenSections),
                    
              // billing section
              RoundedContainer(
                showBorder: true,
                backgroundColor: dark ? BrandColors.black : BrandColors.white,
                padding: EdgeInsets.all(BrandSizes.md),
                child: Column(
                  children: [
                    // pricing
                    BillingAmountSection(),
                    SizedBox(height: BrandSizes.spaceBetweenItems),
                    
                    // divider
                    Divider(),
                    SizedBox(height: BrandSizes.spaceBetweenItems),
                    
                    // payment method
                    BillingPaymentSection(),
                    SizedBox(height: BrandSizes.spaceBetweenItems),
                    
                    // address
                    BillingAddressSection(),
                    SizedBox(height: BrandSizes.spaceBetweenItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BrandSizes.md),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: BrandImages.onBoardingImage3,
                    title: 'Payment Is Successfull!',
                    subtitle: 'Your item will be shipped soon!',
                    onPressed: () => Get.offAll(() => NavigationMenu()),
                  ),
                ),
            child: Text('Checkout \$198')),
      ),
    );
  }
}
