import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key, this.padding,
  });

  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: EdgeInsets.symmetric(horizontal: padding ?? 0),
      width: double.infinity,
      color: Colors.blue.withOpacity(0.1),
    );
  }
}

