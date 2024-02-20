import 'package:flutter/material.dart';
import 'package:shopping/common/widgets/texts/section_heading.dart';
import 'package:shopping/utils/constants/sizes.dart';
import 'package:shopping/utils/helpers/helper_functions.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Kibali Kibali', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(
          width: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text('+255 765 7865',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                '7177, Moshi Tanzania',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
