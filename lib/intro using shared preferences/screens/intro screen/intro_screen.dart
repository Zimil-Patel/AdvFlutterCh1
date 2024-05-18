import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/provider/intro_screen_provider.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/view/components/bottom_button_row.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/view/components/intro_stack.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    IntroScreenProvider introScreenProviderTrue =
        Provider.of(context, listen: true);
    IntroScreenProvider introScreenProviderFalse =
        Provider.of(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Food Express',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: titleTextColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: PageView(
          controller: introScreenProviderTrue.pageController,
          children: [
            ...List.generate(
              3,
              (index) => Column(
                children: [
                  IntroStack(index: index),
                  const Spacer(),
                  BottomButtonRow(
                    index: index,
                  ),
                ],
              ),
            ),
          ],
          onPageChanged: (value) {
            introScreenProviderFalse.setIntroStackIndex(value);
          },
        ),
      ),
    );
  }
}
