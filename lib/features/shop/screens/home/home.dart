import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopping/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopping/common/widgets/layout/grid_layout.dart';
import 'package:shopping/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:shopping/common/widgets/texts/section_heading.dart';
import 'package:shopping/features/shop/screens/all_products/all_products.dart';
import 'package:shopping/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopping/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shopping/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopping/utils/constants/image_strings.dart';
import 'package:shopping/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //header
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //searchBar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //categories

                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        //scrollable categories
                        THomeCategories()
                      ],
                    ),
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //promo slider
                  const TPromoSlider(
                    banners: [
                      TImages.banner4,
                      TImages.banner2,
                      TImages.banner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //heading
                  TSectionHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //popular products

                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
