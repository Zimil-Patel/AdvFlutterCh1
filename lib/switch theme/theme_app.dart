import 'package:adv_flutter_ch1/switch%20theme/screens/home/view/theme_screen.dart';
import 'package:adv_flutter_ch1/switch%20theme/utils/constants.dart';
import 'package:adv_flutter_ch1/switch%20theme/utils/theme_data.dart';
import 'package:flutter/material.dart';

class GlobalApp extends StatefulWidget {
  const GlobalApp({super.key});

  @override
  State<GlobalApp> createState() => _GlobalAppState();
}

class _GlobalAppState extends State<GlobalApp> {
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