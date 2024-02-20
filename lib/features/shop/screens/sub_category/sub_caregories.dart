import 'package:flutter/material.dart';
import 'package:shopping/common/widgets/appbar/appbar.dart';
import 'package:shopping/common/widgets/images/t_rounded_image.dart';
import 'package:shopping/common/widgets/products/products_cards/product_card_horizontal.dart';
import 'package:shopping/common/widgets/texts/section_heading.dart';
import 'package:shopping/utils/constants/image_strings.dart';
import 'package:shopping/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.banner4,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Sub-category

              //heading
              TSectionHeading(title: 'Sport Shirts', onPressed: () {}),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),

              SizedBox(
                height: 120,
                child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: TSizes.spaceBtwItems),
                    itemBuilder: (context, index) =>
                        const TProductCardHorizontal()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
