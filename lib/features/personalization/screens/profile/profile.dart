import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping/common/widgets/appbar/appbar.dart';
import 'package:shopping/common/widgets/images/t_circular_image.dart';
import 'package:shopping/common/widgets/texts/section_heading.dart';
import 'package:shopping/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:shopping/utils/constants/image_strings.dart';
import 'package:shopping/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: TAppBar(
          showBackArrow: true,
          title: Text('Profile'),
        ),
      ),
      //body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //profile pic
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(
                    image: TImages.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'))
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            const TSectionHeading(
              title: 'Profile Information',
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(
              title: 'User ID',
              value: '456783',
              icon: Iconsax.copy,
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'E-mail',
              value: 'kibali@kibali.com',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Phone Number',
              value: '+255-713-485340',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Gender',
              value: 'Male',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Date of Birth',
              value: '10 Oct 1999',
              onPressed: () {},
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Close Account',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
