import 'package:adv_flutter_ch1/stepper%20widget/screens/stepper%20horizontal/view/horizontal_stepper.dart';
import 'package:adv_flutter_ch1/stepper%20widget/screens/stepper%20vertical/view/vertical_stepper.dart';
import 'package:flutter/material.dart';

class StepperApp extends StatelessWidget {
  const StepperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/horizontal',
      routes: {
        '/vertical'  :(context) => const VerticalStepper(),
        '/horizontal'  :(context) => const HorizontalStepper(),
      },
    );
  }
}
