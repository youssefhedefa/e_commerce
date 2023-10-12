import 'package:flutter/material.dart';

class CustomMessageAppBar extends StatefulWidget implements PreferredSizeWidget {


  const CustomMessageAppBar({super.key, });
  @override
  State<CustomMessageAppBar> createState() => _CustomMessageAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(55);
}

class _CustomMessageAppBarState extends State<CustomMessageAppBar> {

  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Smiley\' Store'),
      leading:  GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color.fromRGBO(236, 89, 89, 1),
        ),
      ),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Color.fromRGBO(190, 230, 231, 1),
            child: Text(
              'SS',
              style: TextStyle(
                color: Color.fromRGBO(136, 199, 198, 1),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
