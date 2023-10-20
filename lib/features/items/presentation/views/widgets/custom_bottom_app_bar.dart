import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomBottomAppBar({
    super.key,
  });
  @override
  State<CustomBottomAppBar> createState() => _CustomMessageAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(55);
}

class _CustomMessageAppBarState extends State<CustomBottomAppBar> {
  Size get preferredSize => const Size.fromHeight(55);

  int currentIndex = 0;
  List<String> labels = ['Best Match','Top Rated','Price Low-High','Price High-Low'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0,left: 12.0),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: labels.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  currentIndex = index;
                });
              },
              child:  CustomBottomAppBarTextButton(
                active: currentIndex == index,
                text: labels[index],
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 14,);
        },
        ),
      ),
    );
  }
}

class CustomBottomAppBarTextButton extends StatelessWidget {
  const CustomBottomAppBarTextButton({Key? key, required this.active, required this.text}) : super(key: key);

  final bool active;
  final String text;

  final initialColor = const Color.fromRGBO(175, 181, 184, 1);
  final clickedColor = const Color.fromRGBO(240, 80, 80, 1);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: active? clickedColor : initialColor,
        fontSize: 18,
      ),
    );
  }
}
