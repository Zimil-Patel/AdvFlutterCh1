import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/intro_list.dart';
import '../../../home screen/view/home_screen.dart';
import '../../provider/intro_screen_provider.dart';

class BottomButtonRow extends StatelessWidget {
  const BottomButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int index =
        Provider.of<IntroScreenProvider>(context, listen: true).getIndex();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: index == introList.length - 1
            ?
            //LET'S GO BUTTON
            const LetsGoButton()
            : SkipAndNextButton(index: index),
      ),
    );
  }
}

class LetsGoButton extends StatelessWidget {
  const LetsGoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Provider.of<IntroScreenProvider>(context, listen: false).setPreferenceToTrue();
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const FoodExpressHomeScreen(),
              ));
        },
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius:
                  const BorderRadius.all(Radius.circular(30))),
          child: Text(
            'Let\'s Go',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ),
      );
  }
}

class SkipAndNextButton extends StatelessWidget {
  const SkipAndNextButton({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SKIP BUTTON
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Provider.of<IntroScreenProvider>(context, listen: false).setIntroStackIndex(introList.length - 1);
            },
            child: Container(
              padding: const EdgeInsets.only(
                  left: 24, right: 30, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(30))),
              child: Text(
                'Skip',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: lableTextColor),
              ),
            ),
          ),
          // NEXT BUTTON
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (index < introList.length - 1) {
                Provider.of<IntroScreenProvider>(context, listen: false)
                    .incrementIndex();
              }
            },
            child: Container(
              padding: const EdgeInsets.only(
                  left: 30, right: 24, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(30))),
              child: Text(
                'Next',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      );
  }
}
