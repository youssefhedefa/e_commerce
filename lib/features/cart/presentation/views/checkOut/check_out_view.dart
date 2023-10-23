import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/cart/presentation/views/checkOut/widgets/check_out_label.dart';
import 'package:e_commerce/features/cart/presentation/views/widgets/custom_cart_list.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_label.dart';
import 'package:flutter/material.dart';
import 'widgets/check_out_address.dart';
import 'widgets/check_out_footer.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MobileDimensions.getHeight(context) - 120,
              width: MobileDimensions.getWidth(context),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 246, 248, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 34,
                          color: Color.fromRGBO(243, 104, 100, 1),
                        ),
                      ),
                    ),
                    const CustomLabel(label: 'Checkout'),
                    const SizedBox(height: 16,),
                    const CheckOutLabel(text: 'SHIPPING ADDRESS'),
                    const SizedBox(height: 6,),
                    const Text(
                      'John Doe ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    const CheckOutAddress(),
                    const SizedBox(height: 16,),
                    const CheckOutDivider(),
                    const SizedBox(height: 16,),
                    const CheckOutLabel(text: 'PAYMENT METHOD'),
                    Row(
                      children: [
                        Image(
                          image: AssetImage(
                            MyAssets.mastercard,
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 12,),),
                        const Text(
                          'Mastercard ending with **00 ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    const CheckOutDivider(),
                    const CustomCartList(),
                  ],
                ),
              ),
            ),
            const CheckOutFooter(),
          ],
        ),
      ),
    );
  }
}
class CheckOutDivider extends StatelessWidget {
  const CheckOutDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Divider(
        color: Color.fromRGBO(175, 178, 185, 1),
        height: 2,
        endIndent: 12,
      ),
    );

  }
}
