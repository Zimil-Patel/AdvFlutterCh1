import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';


class FilterRow extends StatelessWidget {
  const FilterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 6),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: lightBlue,
              ),
              child: Row(
                children: [
                  Text(
                    'Albums',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                        color: blue,
                        letterSpacing: 0.8),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: blue,
                    size: 26,
                  ),
                ],
              ),
            ),
          ),
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}