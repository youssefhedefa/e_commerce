import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/cart/presentation/views/cart_view.dart';
import 'package:e_commerce/features/home/presentation/manager/home_states.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_body.dart';
import 'package:e_commerce/features/profile/presentation/views/profile_view.dart';
import 'package:e_commerce/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  int _currentIndex = 0;

  int getCurrentIndex() {
    return _currentIndex;
  }

  void changeIndex(int index) {
    _currentIndex = index;
    emit(ChangeToSearchViewSuccess());
  }

  Widget getView(){
    emit(ChangeToSearchViewSuccess());
    return views[_currentIndex];
  }

  List<Widget> views = [
    const HomeBody(),
    const SearchView(),
    const CartView(),
    const ProfileView(),
    const HomeBody(),
  ];

}
