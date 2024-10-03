import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: BrandSizes.spaceBetweenInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: BrandSizes.spaceBetweenInputFields,
          ),

          // username
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Username',
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: BrandSizes.spaceBetweenInputFields,
          ),

          // email
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'E-Mail',
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: BrandSizes.spaceBetweenInputFields,
          ),

          // phone number
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: BrandSizes.spaceBetweenInputFields,
          ),

          // password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: BrandSizes.spaceBetweenInputFields,
          ),

          // terms and conditions checkbox
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(
                width: BrandSizes.spaceBetweenItems,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'I Agree To ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                            color: dark ? Colors.white : BrandColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? Colors.white : BrandColors.primary,
                          ),
                    ),
                    TextSpan(
                      text: ' And ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Terms Of Use',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                            color: dark ? Colors.white : BrandColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? Colors.white : BrandColors.primary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: BrandSizes.spaceBetweenSections,
          ),

          // sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: Text('Create Account'),
            ),
          ),
          const SizedBox(
            height: BrandSizes.spaceBetweenSections,
          ),
        ],
      ),
    );
  }
}
