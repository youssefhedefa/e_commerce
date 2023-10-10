import 'package:e_commerce/features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key, required this.cubit,}) : super(key: key);

  final HomeCubit cubit;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        cubit.changeIndex(index);
      },
      currentIndex: cubit.getCurrentIndex(),
      selectedItemColor: const Color.fromRGBO(239, 86, 95, 1),
      unselectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: 'search'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
            ),
            label: 'Profile'),
      ],
    );
  }
}
