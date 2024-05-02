import 'package:adv_flutter_ch1/gallery%20with%20authentication/screens/home%20screen/view/home_screen.dart';
import 'package:flutter/material.dart';

class GalleryWithAuthentication extends StatelessWidget {
  const GalleryWithAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 2,
          shadowColor: Colors.grey,
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
        ),
      ),
      home: const GalleryHomePage(),
    );
  }
}
