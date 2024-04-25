import 'package:flutter/material.dart';

AppBar verticalStepperAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        'Flutter Stepper Demo',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.white),
      ),
      automaticallyImplyLeading: false,
    );
  }