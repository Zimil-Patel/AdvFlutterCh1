import 'package:adv_flutter_ch1/counter%20app%20using%20provider/counter_app.dart';
import 'package:adv_flutter_ch1/counter%20app%20using%20provider/screens/provider/counter_provider.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/intro_using_shared_preferences.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/provider/intro_screen_provider.dart';
import 'package:adv_flutter_ch1/switch%20theme%20using%20provider/provider_theme_switch.dart';
import 'package:adv_flutter_ch1/switch%20theme%20using%20provider/screens/main%20screen/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Applications List

//1. GlobalApp()
//2. StepperApp()
//3. ThemeSwitchUsingProvider()
//4. CounterApp()
//6. IntroUsingSharedPreferences()

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
      ],
      child: const IntroUsingSharedPreferences(),
    ),
  );
}
