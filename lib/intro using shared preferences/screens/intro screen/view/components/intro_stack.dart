import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/intro_list.dart';
import 'index_indicator.dart';

class IntroStack extends StatelessWidget {
  const IntroStack({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),

        //INTRO IMAGE
        AspectRatio(
          aspectRatio: 1.2,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(introList[index].img!),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        //INTRO TITLE
        Text(
          introList[index].title!,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: titleTextColor),
        ),

        const SizedBox(
          height: 20,
        ),

        Text(
          introList[index].description,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: titleTextColor.withOpacity(0.9)),
          textAlign: TextAlign.center,
          softWrap: true,
        ),

        const SizedBox(
          height: 20,
        ),

        IndexIndicator(
          i: index,
        ),
      ],
    );
  }
}
