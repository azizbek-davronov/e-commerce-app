import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class PromoCodeTextField extends StatelessWidget {
  const PromoCodeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // textfield
        Flexible(
          flex: 7,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Have a promo code? Enter here.',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),

        // button
        Flexible(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark
                        ? BrandColors.white.withOpacity(0.5)
                        : BrandColors.dark.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                onPressed: () {},
                child: Text('Apply'),
              ),
            )),
      ],
    );
  }
}
