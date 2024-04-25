import 'package:flutter/material.dart';
import 'components/buttons.dart';
import 'components/title_texts.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key, required this.refresh});

  final VoidCallback refresh;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final textScale = MediaQuery
        .of(context)
        .textScaleFactor;
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: height / 7),
          decoration: BoxDecoration(
            color: Theme
                .of(context)
                .colorScheme
                .primary,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 2,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [

              const Spacer(
                flex: 2,
              ),
              //Titles
              TitleTexts(textScale: textScale),

              const Spacer(
                flex: 1,
              ),

              //Button - 1
              Buttons(height: height, textScale: textScale, refresh: refresh,),

              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

