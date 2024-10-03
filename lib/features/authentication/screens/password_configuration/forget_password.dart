import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(BrandSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headings
            Text(
              'Forget Password',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: BrandSizes.spaceBetweenItems,
            ),
            Text(
              'Don\'t worry. Enter your email and we will send you a password reset link.',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: BrandSizes.spaceBetweenSections * 2,
            ),

            // text field
            TextFormField(
              decoration: InputDecoration(
                labelText: 'E-MAIL',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(
              height: BrandSizes.spaceBetweenSections,
            ),

            // submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
