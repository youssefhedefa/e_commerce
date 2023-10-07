import 'package:e_commerce/features/home/presentation/manager/home_cubit.dart';
import 'package:e_commerce/features/home/presentation/manager/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/custom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocBuilder<HomeCubit,HomeStates>(
        builder: (context,state){
          var hCubit = BlocProvider.of<HomeCubit>(context);
          return  Scaffold(
            bottomNavigationBar: CustomBottomNavigationBar(cubit: hCubit),
            body: hCubit.getView(),
          );
        },
      ),
    );
  }
}
