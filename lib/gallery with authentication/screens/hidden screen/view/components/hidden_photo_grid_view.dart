import 'package:flutter/cupertino.dart';

class HiddenPhotoGridView extends StatelessWidget {
  const HiddenPhotoGridView({
    super.key,
    required this.album,
    required this.itemCount,
  });

  final String album;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 80,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      children: [
        ...List.generate(
          itemCount,
          (index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/$album/image${index + 1}.jpeg'))),
          ),
        )
      ],
    );
  }
}
