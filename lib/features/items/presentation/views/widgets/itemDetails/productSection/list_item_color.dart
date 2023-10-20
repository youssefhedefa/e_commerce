
import 'package:flutter/material.dart';

import 'item_color.dart';

class ListOfColor extends StatefulWidget {
  const ListOfColor({Key? key}) : super(key: key);

  @override
  State<ListOfColor> createState() => _ListOfColorState();
}

class _ListOfColorState extends State<ListOfColor> {

  int currentIndex = 0;
  List<Color> colors = const [Color(0xffE3539B),Color(0xffF58D68),Color(0xff75B5F8),Color(0xffFFFFFF),Color(0xffC9C9C9),Color(0xff3D3A39),];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              setState(() {
                currentIndex = index;
              });
            },
            child: ItemColor(
              active: currentIndex == index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}

