import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 48,
        child: Icon(Iconsax.user),
      ),
      title: Text(
        'Azizbek Davronov',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: BrandColors.white),
      ),
      subtitle: Text(
        'aziz.shuxratovich@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: BrandColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.edit),
        color: BrandColors.white,
      ),
    );
  }
}
