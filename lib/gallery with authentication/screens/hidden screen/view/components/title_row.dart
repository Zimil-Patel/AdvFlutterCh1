import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';


class TitleRow extends StatelessWidget {
  const TitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Today',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
                color: Colors.black,
                letterSpacing: 0.8),
          ),
          Text(
            'Select',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Colors.blue,
                letterSpacing: 0.8),
          ),
        ],
      ),
    );
  }
}