import 'package:adv_flutter_ch1/counter%20app%20using%20provider/screens/provider/counter_provider.dart';
import 'package:adv_flutter_ch1/gallery%20with%20authentication/gallery_with_authentication.dart';
import 'package:adv_flutter_ch1/gallery%20with%20authentication/screens/home%20screen/provider/gallery_provider.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/provider/intro_screen_provider.dart';
import 'package:adv_flutter_ch1/switch%20theme%20using%20provider/screens/main%20screen/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app list/my_app.dart';
import 'contact us app/contact_us_app.dart';

// Applications List
//1. DefaultThemeApp()
//2. StepperApp()
//3. ThemeSwitchUsingProvider() //with shared preferences
//4. CounterApp()
//6. IntroUsingSharedPreferences()
//7. ContactUsApp()

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => IntroScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GalleryProvider(),
        ),
      ],
      //ENTER APP NAME HERE FROM ABOVE GIVEN LIST TO RUN APP
      child: const MyApp(),
    ),
  );
}
