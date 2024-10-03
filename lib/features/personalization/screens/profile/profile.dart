import 'package:e_commerce_app/common/widgets/custom_appbar.dart';
import 'package:e_commerce_app/common/widgets/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title:
            Text('Profile', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BrandSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    // profile picture
                    RoundedImage(
                      imageUrl: BrandImages.onBoardingImage1,
                      backgroundColor: Colors.transparent,
                      width: 100,
                      height: 100,
                      borderRadius: 100,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change Profile Picture'),
                    ),

                    // details
                    SizedBox(height: BrandSizes.spaceBetweenItems/2),
                    Divider(),
                    SizedBox(height: BrandSizes.spaceBetweenItems/2),

                    SectionHeading(
                      title: 'Profile Information',
                      showActionButton: false,
                    ),
                    SizedBox(height: BrandSizes.spaceBetweenItems/2),

                    ProfileMenu(
                      onTap: () {},
                      title: 'Name',
                      value: 'Azizbek',
                    ),
                    ProfileMenu(
                      onTap: () {},
                      title: 'Surname',
                      value: 'Davronov',
                    ),
                    ProfileMenu(
                      onTap: () {},
                      title: 'Username',
                      value: 'azizbek-davronov',
                    ),

                    SizedBox(height: BrandSizes.spaceBetweenItems/2),
                    Divider(),
                    SizedBox(height: BrandSizes.spaceBetweenItems/2),

                    SectionHeading(
                      title: 'Personal Information',
                      showActionButton: false,
                    ),
                    SizedBox(height: BrandSizes.spaceBetweenItems/2),

                    ProfileMenu(
                      onTap: () {},
                      title: 'User ID',
                      value: '09023',
                      icon: Iconsax.copy,
                    ),
                    ProfileMenu(
                      onTap: () {},
                      title: 'E-mail',
                      value: 'aziz.shuxratovich@gmail.com',
                    ),
                    ProfileMenu(
                      onTap: () {},
                      title: 'Phone Number',
                      value: '+998 93 518 33 77',
                    ),
                    ProfileMenu(
                      onTap: () {},
                      title: 'Gender',
                      value: 'Male',
                    ),
                    ProfileMenu(
                      onTap: () {},
                      title: 'Date Of Birth',
                      value: '26 Nov, 1999',
                    ),

                    SizedBox(height: BrandSizes.spaceBetweenItems/2),
                    Divider(),
                    SizedBox(height: BrandSizes.spaceBetweenItems/2),

                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Delete Account',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_34,
    required this.onTap,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: BrandSizes.spaceBetweenItems / 2),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 1,
              child: Icon(
                icon,
                // size: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
