import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/common/widgets/appbar/appbar.dart';
import 'package:shopping/features/shop/screens/cart/widget/cart_items.dart';
import 'package:shopping/features/shop/screens/checkout/checkout.dart';
import 'package:shopping/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        //items in cart
        child: TCartItems(),
      ),

      //checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckOutScreen()),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
