import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({Key? key}) : super(key: key);

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {

  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
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
          Text(
            _counter.toString(),
            style:const TextStyle(
                fontSize: 18
            ),
          ),
          const SizedBox(width: 8,),
          IconButton(
            onPressed: () {
              setState(() {
                _counter--;
              });
            },
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
