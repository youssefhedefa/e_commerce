import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';
import 'action_buttons_row.dart';
import 'list_item_color.dart';
import '../subItemDetails/list_label.dart';
import 'size_list.dart';

class ItemProductNavigatorViewer extends StatelessWidget {
  const ItemProductNavigatorViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MobileDimensions.getWidth(context),
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            ListLabel(text: 'SELECT COLOR'),
            SizedBox(
              height: 10,
            ),
            ListOfColor(),
            Expanded(
              child: SizedBox(
                height: 10,
              ),
            ),
            ListLabel(text: 'SELECT SIZE(US)'),
            SizedBox(
              height: 10,
            ),
            SizeList(),
            Expanded(child: SizedBox(height: 14,)),
            Divider(
              height: 2,
              color: Color.fromRGBO(81, 87, 101, 1),
              endIndent: 20,
            ),
            Expanded(child: SizedBox(height: 10,)),
            ActionButtonsRow(),
            SizedBox(height: 18,),
          ],
        ),
      ),
    );
  }
}


