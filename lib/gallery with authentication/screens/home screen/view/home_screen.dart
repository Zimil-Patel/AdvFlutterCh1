import 'package:adv_flutter_ch1/gallery%20with%20authentication/screens/home%20screen/provider/gallery_provider.dart';
import 'package:adv_flutter_ch1/gallery%20with%20authentication/screens/home%20screen/view/components/filter_row.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/album_grid_view.dart';
import 'components/pop_up_menu.dart';

class GalleryHomePage extends StatelessWidget {
  const GalleryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GalleryProvider provider = Provider.of<GalleryProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // LEADING
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            size: 30,
          ),
        ),

        //TITLE
        title: const Text(
          'Gallery',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),

        // ACTIONS
        actions: [
          PoPUpMenu(provider: provider,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // FILTER ROW
              const FilterRow(),
          
          
              // GRID VIEW
              AlbumsGridView(provider: provider),

            ],
          ),
        ),
      ),
    );
  }
}


