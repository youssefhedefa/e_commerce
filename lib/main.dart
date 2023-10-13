import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/const.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,widget)=>MaterialApp(
        title: 'E Commerce',
        onGenerateRoute: MyRoutes.generateRoute,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Constants.baseColor),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeView,
      ),
    );
  }
}
