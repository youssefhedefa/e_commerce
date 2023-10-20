import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        itemSize: 18,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        // itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Color.fromRGBO(243, 104, 100, 1),
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    );
  }
}
