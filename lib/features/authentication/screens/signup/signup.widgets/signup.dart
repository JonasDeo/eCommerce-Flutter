import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/common/widgets/login_signup/form_divider.dart';
import 'package:shopping/common/widgets/login_signup/social_buttons.dart';
import 'package:shopping/features/authentication/screens/signup/signup.widgets/signup_form.dart';
import 'package:shopping/utils/constants/sizes.dart';
import 'package:shopping/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //title
            Text(TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwSections),

            //form
            const TSignupForm(),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            //divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            //Social btn
            const TSocialButton(),
          ]),
        ),
      ),
    );
  }
}
