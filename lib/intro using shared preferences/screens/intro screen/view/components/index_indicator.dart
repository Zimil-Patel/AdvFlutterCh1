import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/intro_list.dart';
import '../../provider/intro_screen_provider.dart';

class IndexIndicator extends StatelessWidget {
  const IndexIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          introList.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: index ==
                    Provider.of<IntroScreenProvider>(context, listen: true)
                        .getIndex()
                ? TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 200),
                    tween: Tween<double>(begin: 8, end: 26),
                    builder:
                        (BuildContext context, double value, Widget? child) =>
                            Container(
                      height: 6,
                      width: value,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  )
                : GestureDetector(
                  onTap: () {
                    Provider.of<IntroScreenProvider>(context, listen: false).setIntroStackIndex(index);
                  },
                  child: Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 1.2)),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
