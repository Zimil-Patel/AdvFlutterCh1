import 'package:flutter/material.dart';

AppBar horizontalStepperAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.blue,
    centerTitle: false,
    title: Text(
      'Flutter Stepper Sample',
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: Colors.white),
    ),
    automaticallyImplyLeading: false,
  );
}