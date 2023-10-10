import 'package:e_commerce/features/cart/presentation/views/widgets/custom_divider.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_label.dart';
import 'package:flutter/material.dart';
import 'widgets/cart_footer.dart';
import 'widgets/custom_cart_list.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 246, 248, 1),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomLabel(label: 'Cart'),
              SizedBox(
                height: 18,
              ),
              CustomCartList(),
              CustomDivider(width: double.infinity),
              CartFooter()
            ],
          ),
        ),
      ),
    );
  }
}


