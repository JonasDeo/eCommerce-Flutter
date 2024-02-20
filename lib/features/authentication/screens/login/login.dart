import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/common/styles/spacing_styles.dart';
import 'package:shopping/common/widgets/login_signup/form_divider.dart';
import 'package:shopping/common/widgets/login_signup/social_buttons.dart';
import 'package:shopping/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopping/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopping/utils/constants/sizes.dart';
import 'package:shopping/utils/constants/text_strings.dart';
import 'package:shopping/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title, subtitle
              TLoginHeader(dark: dark),

              //form
              const TLoginForm(),

              //divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //footer
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
