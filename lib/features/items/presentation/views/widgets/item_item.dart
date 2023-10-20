import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:flutter/material.dart';

import 'itemDetails/productSection/item_product_navigator_viewer.dart';

class ItemItem extends StatelessWidget {
  const ItemItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, MyRoutes.itemDetailsView, arguments: const ItemProductNavigatorViewer());
      },
      child: Container(
        width: (MobileDimensions.getWidth(context) / 2) - 40,
        height: 260,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MobileDimensions.getWidth(context) / 2 - 25,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(MyAssets.tShirt),
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 0,
                ),
              ),
              const Text(
                'V Neck T shirt -Pink',
                style: TextStyle(
                  color: Color.fromRGBO(126, 132, 149, 1),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    '\$24.55',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 56,
                    height: 26,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 104, 102, 1),
                        borderRadius: BorderRadiusDirectional.circular(20)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox(
                  height: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
