import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/intro_list.dart';
import '../../provider/intro_screen_provider.dart';

class IndexIndicator extends StatelessWidget {
  const IndexIndicator({
    super.key,
    required this.i,
  });
  final int i;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          introList.length,
          (index) => index == i
              ? TweenAnimationBuilder(
                  duration: const Duration(milliseconds: 200),
                  tween: Tween<double>(begin: 8, end: 40),
                  builder:
                      (BuildContext context, double value, Widget? child) =>
                          Container(
                    height: 8,
                    width: value,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                )
              : CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Provider.of<IntroScreenProvider>(context, listen: false)
                        .setIntroStackIndex(index);
                  },
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 1.2)),
                  ),
                ),
        ),
      ],
    );
  }
}
