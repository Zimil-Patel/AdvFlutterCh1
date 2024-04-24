import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.height,
    required this.textScale,
    required this.text,
    required this.color,
  });

  final double height;
  final double textScale;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      alignment: Alignment.center,
      height: height / 12,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 34.0 * textScale, fontWeight: FontWeight.bold),),
    );
  }
}