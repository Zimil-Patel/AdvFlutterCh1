import 'package:adv_flutter_ch1/switch%20theme%20using%20provider/screens/main%20screen/provider/theme_provider.dart';
import 'package:adv_flutter_ch1/switch%20theme%20using%20provider/screens/main%20screen/view/theme_change_home_page.dart';
import 'package:adv_flutter_ch1/switch%20theme%20using%20provider/screens/main%20screen/model/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSwitchUsingProvider extends StatelessWidget {
  const ThemeSwitchUsingProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode:
          Provider.of<ThemeProvider>(context, listen: true).getThemeMode()
              ? ThemeMode.dark
              : ThemeMode.light,
      home: const ThemeChangeHomePage(),
    );
  }
}
