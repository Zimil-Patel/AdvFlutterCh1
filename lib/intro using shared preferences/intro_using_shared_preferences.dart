import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/home%20screen/view/home_screen.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/intro_screen.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/provider/intro_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IntroUsingSharedPreferences extends StatelessWidget {
  const IntroUsingSharedPreferences({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
            textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
          ),
          bodyMedium: GoogleFonts.poppins(
            textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Shared Preference',
      home: Provider.of<IntroScreenProvider>(context, listen: true).isIntroDisplayed ? const FoodExpressHomeScreen() : const IntroScreen(),
    );
  }
}
