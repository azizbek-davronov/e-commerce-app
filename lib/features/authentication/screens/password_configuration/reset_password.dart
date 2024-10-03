import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(BrandSizes.defaultSpace),
        child: Column(
          children: [
            // image
            Image(
              width: HelperFunctions.screenWidth() * 0.6,
              image: AssetImage(
                  'assets/images/animations/sammy-line-man-receives-a-mail.png'),
            ),
            const SizedBox(
              height: BrandSizes.spaceBetweenSections,
            ),

            // title and subtitle
            Text(
              'Password Reset Link Is Sent',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: BrandSizes.spaceBetweenItems,
            ),
            Text(
              'Your account security is our priority! We\'ve sent you a secure link to safely change your password and keep your account protected.',
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: BrandSizes.spaceBetweenSections,
            ),

            // buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Done'),
              ),
            ),
            const SizedBox(
              height: BrandSizes.spaceBetweenItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text('Resend Link'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
