import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: const Color.fromRGBO(239, 86, 95, 1),
      unselectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Color.fromRGBO(239, 86, 95, 1),),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined,color: Colors.black,),label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,),label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outlined,color: Colors.black,),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.reorder_outlined,color: Colors.black,),label: 'More'),
      ],
    );
  }
}
