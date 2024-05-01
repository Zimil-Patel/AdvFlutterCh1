import 'package:adv_flutter_ch1/contact%20us%20app/screens/contact%20us%20page/contact_us_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsApp extends StatelessWidget {
  const ContactUsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.varelaRound(
            textStyle: const TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const ContactUsHomePage(),
    );
  }
}
