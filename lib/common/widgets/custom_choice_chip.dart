import 'package:e_commerce_app/common/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: HelperFunctions.getColor(text) != null
            ? SizedBox(height: 48)
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? BrandColors.white : null),
        avatar: HelperFunctions.getColor(text) != null
            ? RoundedContainer(
                width: 48,
                height: 48,
                radius: 24,
                backgroundColor: HelperFunctions.getColor(text)!,
              )
            : null,
        labelPadding:
            HelperFunctions.getColor(text) != null ? EdgeInsets.all(0) : null,
        padding:
            HelperFunctions.getColor(text) != null ? EdgeInsets.all(0) : null,
        shape: HelperFunctions.getColor(text) != null
            ? CircleBorder(side: BorderSide(color: Colors.transparent, width: 0))
            : null,
        selectedColor: HelperFunctions.getColor(text) != null
            ? HelperFunctions.getColor(text)!
            : null,
        backgroundColor: HelperFunctions.getColor(text) != null
            ? HelperFunctions.getColor(text)!
            : null,
      ),
    );
  }
}
