import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants.dart';
import 'container_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.height,
    required this.textScale,
    required this.refresh,
  });

  final VoidCallback refresh;
  final double height;
  final double textScale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
          onPressed: (){
            isDark = false;
            refresh();
          },
          padding: EdgeInsets.zero,
          child: ContainerButton(
            height: height,
            textScale: textScale,
            text: 'Light Theme',
            color: Theme
                .of(context)
                .colorScheme
                .secondary,
          ),
        ),

        //Button - 2
        CupertinoButton(
          onPressed: (){
            isDark = true;
            refresh();
          },
          padding: EdgeInsets.zero,
          child: ContainerButton(
            height: height,
            textScale: textScale,
            text: 'Dark Theme',
            color: Theme
                .of(context)
                .colorScheme
                .surface,
          ),
        ),
      ],
    );
  }
}

