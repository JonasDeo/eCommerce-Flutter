import 'package:flutter/material.dart';
import 'package:shopping/common/widgets/appbar/appbar.dart';
import 'package:shopping/common/widgets/products/ratings/ratings_indicator.dart';
import 'package:shopping/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:shopping/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:shopping/utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      //body

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hello World'),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                "12,611",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //user reviews
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
