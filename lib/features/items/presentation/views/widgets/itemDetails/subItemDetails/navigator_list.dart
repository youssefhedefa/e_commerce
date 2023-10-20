import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

import 'navigator_item.dart';

class NavigatorList extends StatefulWidget {
  const NavigatorList({Key? key}) : super(key: key);

  @override
  State<NavigatorList> createState() => _NavigatorListState();
}

class _NavigatorListState extends State<NavigatorList> {

  final Color initialColor = const Color.fromRGBO(126, 132, 149, 1);
  final Color selectedButtonColor = const Color.fromRGBO(240, 80, 80, 1);
  int currentIndex = 0;
  List<String> navigatePageNames = ['Product','Details','Reviews'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        height: 46,
        width: MobileDimensions.getWidth(context),
        child: ListView.builder(
          itemCount: navigatePageNames.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  currentIndex = index;
                });
              },
              child: NavigatorItem(
                active: currentIndex == index,
                text: navigatePageNames[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

