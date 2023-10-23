import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

import 'widgets/check_out_footer.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MobileDimensions.getHeight(context) - 80,
            color: const Color.fromRGBO(245, 246, 248, 1),
          ),
          const CheckOutFooter(),
        ],
      ),
    );
  }
}

