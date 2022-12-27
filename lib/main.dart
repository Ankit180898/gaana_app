import 'package:flutter/material.dart';
import 'package:gaana_app2/Screens/see_all_songs.dart';

import 'package:get/get.dart';

import 'Screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.transparent),

        ),
        initialRoute: "/",
        defaultTransition: Transition.rightToLeft,
        getPages: [
          GetPage(name: "/", page: () => const HomePage()),
          GetPage(name: "/nextScreen", page: () => const SeeAllSongs()),
        ]
    );
  }

}