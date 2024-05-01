import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';

class ImageWithLable extends StatelessWidget {
  const ImageWithLable({
    super.key,
    required this.svg,
    required this.lable,
    this.showBorder = true,
    this.imgSize = 30,
    this.verticalPadding = 20 / 2 + 5
  });

  final String svg, lable;
  final bool showBorder;
  final double imgSize;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: defaultPadding / 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: showBorder
              ? Border.all(color: Colors.blue.withOpacity(0.1), width: 1)
              : null),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                  height: imgSize,
                  width: imgSize,
                  child: SvgPicture.asset('assets/svg/$svg.svg'))),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Expanded(
            flex: 6,
            child: Text(
              softWrap: true,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              lable,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
