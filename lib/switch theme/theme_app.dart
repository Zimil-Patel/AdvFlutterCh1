import 'package:adv_flutter_ch1/switch%20theme/screens/home/view/theme_screen.dart';
import 'package:adv_flutter_ch1/switch%20theme/utils/constants.dart';
import 'package:adv_flutter_ch1/switch%20theme/utils/theme_data.dart';
import 'package:flutter/material.dart';

class DefaultThemeApp extends StatefulWidget {
  const DefaultThemeApp({super.key});

  @override
  State<DefaultThemeApp> createState() => _DefaultThemeAppState();
}

class _DefaultThemeAppState extends State<DefaultThemeApp> {
  @override
  Widget build(BuildContext context) {
    void refresh(){
      setState(() {

      });
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeModel.lightTheme,
      darkTheme: ThemeModel.darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: ThemeApp(refresh: refresh,),
    );
  }
}