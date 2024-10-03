import 'package:e_commerce_app/common/widgets/success_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                'Verify Your Email',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: BrandSizes.spaceBetweenItems,
              ),
              Text(
                'aziz.shuxratovich@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: BrandSizes.spaceBetweenItems,
              ),
              Text(
                'Verify your email to start shopping and experience a world of unrivaled deals and personalized offers.',
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
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image:
                          'assets/images/animations/sammy-line-man-and-woman-high-fiving-each-other.png',
                      title: 'Your Account Is Successfully Created!',
                      subtitle:
                          'Welcome to your ultimate shopping destination! Unleash the joy of seamless online shopping!',
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: Text('Continue'),
                ),
              ),
              const SizedBox(
                height: BrandSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Resend Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
