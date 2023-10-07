import 'package:flutter/material.dart';

import 'item_counter.dart';

class ItemDetailsColumn extends StatelessWidget {
  const ItemDetailsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'Red Scarf',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Text(
            '2ft',
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w400,
              fontSize: 22,
            ),
          ),
          const Spacer(),
          const Text(
            '\$ 20.00',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18,
              color: Color.fromRGBO(242, 111, 106, 1),
            ),
          ),
          const Spacer(),
          const ItemCounter(),
        ],
      ),
    );
  }
}
