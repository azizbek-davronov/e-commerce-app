import 'package:e_commerce_app/common/widgets/form_divider.dart';
import 'package:e_commerce_app/common/widgets/social_buttons.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BrandSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                'Create Account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: BrandSizes.spaceBetweenSections,
              ),

              // form
              SignUpForm(),

              // divider
              FormDivider(dividerText: 'Or Sign Up With'),

              // social buttons
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}