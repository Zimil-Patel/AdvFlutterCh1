import 'package:adv_flutter_ch1/switch%20theme/screens/home/view/home_screen.dart';
import 'package:adv_flutter_ch1/switch%20theme/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../utils/darkTheme.dart';
import '../../../utils/lightTheme.dart';

class SwitchThemeApp extends StatefulWidget {
  const SwitchThemeApp({super.key});

  @override
  State<SwitchThemeApp> createState() => _SwitchThemeAppState();
}

class _SwitchThemeAppState extends State<SwitchThemeApp> {
  @override
  Widget build(BuildContext context) {
    void refresh(){
      setState(() {

      });
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(refresh: refresh,),
    );
  }
}
