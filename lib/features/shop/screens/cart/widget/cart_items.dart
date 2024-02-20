import 'package:flutter/material.dart';
import 'package:shopping/common/widgets/products/cart/add_remove_button.dart';
import 'package:shopping/common/widgets/products/cart/cart_item.dart';
import 'package:shopping/common/widgets/texts/product_price_text.dart';
import 'package:shopping/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          //cart items
          const TCartItem(),
          if (showAddRemoveButton)
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

          //add remove btn with total price
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),

                    //add remove buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '256')
              ],
            )
        ],
      ),
    );
  }
}
