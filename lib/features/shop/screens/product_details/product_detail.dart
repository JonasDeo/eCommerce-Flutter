import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping/common/widgets/texts/section_heading.dart';
import 'package:shopping/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:shopping/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:shopping/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:shopping/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:shopping/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:shopping/features/shop/screens/product_reviews/product_reviews.dart';

import 'package:shopping/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //product image slider
            const TProductImageSlider(),

            //product details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  const TRatingAndShare(),

                  //price, title, stock & brand
                  const TProductMetaData(),

                  //attributes
                  const TProductAttributes(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //checkout Btn
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),

                  //description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSectionHeading(
                    title: 'Reviews(199)',
                    onPressed: () =>
                        Get.to((() => const ProductReviewScreen())),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],

          //product detail
        ),
      ),
    );
  }
}
