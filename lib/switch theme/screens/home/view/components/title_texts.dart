import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class TitleTexts extends StatelessWidget {
  const TitleTexts({
    super.key,
    required this.textScale,
  });

  final double textScale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Yo Man!', style: Theme
            .of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 64 * textScale),),


        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            textAlign: TextAlign.center,
            'It\'s a simple example of \ndark theme', style: Theme
              .of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400, fontSize: 30 * textScale),),
        ),
      ],
    );
  }
}
