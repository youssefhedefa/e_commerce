import 'package:e_commerce/core/utils/const.dart';
import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

import 'rating.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: MobileDimensions.getHeight(context) / 7,
          maxWidth: MobileDimensions.getWidth(context)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromRGBO(190, 230, 230, 1),
            radius: 40,
            child: Text(
              'JD',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: Color.fromRGBO(142, 200, 199, 1),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MobileDimensions.getWidth(context)-160,
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Rating(),
                    Text(
                      '10 OCT 2018',
                      style: TextStyle(
                        color: Color.fromRGBO(81, 87, 101, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'Jane Doe',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600

                ),
              ),
              SizedBox(
                width: MobileDimensions.getWidth(context)-200,
                child: const Text(
                  Constants.message,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Color.fromRGBO(81, 87, 101, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
