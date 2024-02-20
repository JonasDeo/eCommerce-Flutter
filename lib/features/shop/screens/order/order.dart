import 'package:flutter/material.dart';
import 'package:shopping/common/widgets/appbar/appbar.dart';
import 'package:shopping/features/shop/screens/order/widgets/orders_list.dart';
import 'package:shopping/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: TAppBar(
        title:
            Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        //orders
        child: TOrderListItems(),
      ),
    );
  }
}
