import 'package:adv_flutter_ch1/gallery%20with%20authentication/screens/hidden%20screen/view/components/title_row.dart';
import 'package:flutter/material.dart';

import 'components/hidden_photo_grid_view.dart';

class HiddenScreen extends StatelessWidget {
  const HiddenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hidden Photos',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Title ROW
              TitleRow(),
              //GRID VIEW
              HiddenPhotoGridView(itemCount: 20, album: 'hidden1',),

              // Title ROW
              TitleRow(),
              //GRID VIEW
              HiddenPhotoGridView(itemCount: 15, album: 'hidden2',)
            ],
          ),
        ),
      ),
    );
  }
}


