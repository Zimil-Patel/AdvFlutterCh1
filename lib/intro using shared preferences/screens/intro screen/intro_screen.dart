import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/view/components/bottom_button_row.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/screens/intro%20screen/view/components/intro_stack.dart';
import 'package:adv_flutter_ch1/intro%20using%20shared%20preferences/utils/constants.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Express',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: titleTextColor),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Stack(
          children: [
            //INTRO DATA
            IntroStack(),

            BottomButtonRow(),
          ],
        ),
      ),
    );
  }
}
