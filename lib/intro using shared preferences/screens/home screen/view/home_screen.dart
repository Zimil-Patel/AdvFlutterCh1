import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class FoodExpressHomeScreen extends StatelessWidget {
  const FoodExpressHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome! User,',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: titleTextColor),
              ),
              Text(
                'This is Home Page of\nFood Express!',
                textAlign: TextAlign.center,
                softWrap: true,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: titleTextColor.withOpacity(0.9)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
