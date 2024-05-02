import 'package:flutter/material.dart';

import '../../provider/gallery_provider.dart';

class AlbumsGridView extends StatelessWidget {
  const AlbumsGridView({
    super.key,
    required this.provider,
  });

  final GalleryProvider provider;

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
          Container(
            width: MediaQuery.of(context).size.width / 3 - 12 * 2, // Adjust this calculation based on crossAxisCount and crossAxisSpacing
            height: MediaQuery.of(context).size.width / 3 - 12 * 2, // Make the container square
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
          Column(
            children: [
              Text(provider.albumsList[index].name!, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              Text('${provider.albumsList[index].length}', style: const TextStyle(color: Colors.grey),),
            ],
          ),
        ],
      ),
    );
  }
}