import 'package:flutter/material.dart';

import '../../../../utils/lable_class.dart';

class LableRow extends StatelessWidget {
  const LableRow({super.key, required this.lable, required this.color,});

  final LableModel lable;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        children: [
          // ICON
          Icon(
            lable.icon,
            color: color,
          ),
          const SizedBox(
            width: 26,
          ),

          // TITLE
          Text(
            lable.text,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}