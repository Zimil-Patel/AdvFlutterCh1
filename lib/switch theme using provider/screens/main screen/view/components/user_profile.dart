import 'package:flutter/material.dart';

class TopUserProfile extends StatelessWidget {
  const TopUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // BACK BUTTON
            Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Theme.of(context).colorScheme.onSecondary,
            ),

            const Spacer(),

            // ADD BUTTON
            Icon(
              Icons.add_circle_outline_rounded,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const AspectRatio(
          aspectRatio: 3.5,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Testing User',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}