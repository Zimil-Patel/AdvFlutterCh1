import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../provider/gallery_provider.dart';

final DecorationTween _tween = DecorationTween(
  begin: BoxDecoration(
    color: CupertinoColors.systemYellow,
    boxShadow: const <BoxShadow>[],
    borderRadius: BorderRadius.circular(20.0),
  ),
  end: BoxDecoration(
    color: CupertinoColors.systemYellow,
    boxShadow: CupertinoContextMenu.kEndBoxShadow,
    borderRadius: BorderRadius.circular(20.0),
  ),
);

class AlbumsGridView extends StatelessWidget {
  const AlbumsGridView({
    super.key,
    required this.provider,
  });

  final GalleryProvider provider;

  static Animation<Decoration> _boxDecorationAnimation(
      Animation<double> animation) {
    return _tween.animate(
      CurvedAnimation(
        parent: animation,
        curve: Interval(
          0.0,
          CupertinoContextMenu.animationOpensAt,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: provider.albumsList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: 190, // Adjust this value as needed
      ),
      itemBuilder: (context, index) => Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width / 3 - 12 * 2,
            width: MediaQuery.of(context).size.width / 3 - 12 * 2,
            child: CupertinoContextMenu.builder(
              actions: [
                const CupertinoContextMenuAction(
                  isDefaultAction: false,
                  trailingIcon: Icons.copy,
                  child: Text('Copy'),
                ),
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  trailingIcon: CupertinoIcons.share,
                  child: const Text('Share'),
                ),
                const CupertinoContextMenuAction(
                  trailingIcon: CupertinoIcons.heart,
                  child: Text('Favorite'),
                ),
                const CupertinoContextMenuAction(
                  isDestructiveAction: true,
                  trailingIcon: CupertinoIcons.delete,
                  child: Text('Delete'),
                ),
              ],
              builder: (BuildContext context, Animation<double> animation) {
                final Animation<Decoration> boxDecorationAnimation =
                    _boxDecorationAnimation(animation);

                return Container(
                  decoration:
                      animation.value < CupertinoContextMenu.animationOpensAt
                          ? boxDecorationAnimation.value
                          : null,
                  child: Container(
                    width:
                        300, // Adjust this calculation based on crossAxisCount and crossAxisSpacing
                    height: 500, // Make the container square
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(provider.albumsList[index].img!),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Text(
                provider.albumsList[index].name!,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                '${provider.albumsList[index].length}',
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
