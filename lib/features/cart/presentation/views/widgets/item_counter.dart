import 'package:flutter/material.dart';

class ItemCounter extends StatelessWidget {
  const ItemCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_outline,
              size: 40,
              color: Colors.grey[600],
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
          ),
          const SizedBox(width: 8,),
          const Text(
            '1',
            style: TextStyle(
                fontSize: 18
            ),
          ),
          const SizedBox(width: 8,),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove_circle_outline,
              size: 40,
              color: Colors.grey[600],
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
          ),
        ],
      ),
    );
  }
}
