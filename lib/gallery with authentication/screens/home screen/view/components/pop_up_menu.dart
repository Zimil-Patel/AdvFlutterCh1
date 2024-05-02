import 'package:adv_flutter_ch1/gallery%20with%20authentication/screens/hidden%20screen/view/hidden_screen.dart';
import 'package:adv_flutter_ch1/gallery%20with%20authentication/screens/home%20screen/provider/gallery_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PoPUpMenu extends StatelessWidget {
  const PoPUpMenu({
    super.key, required this.provider,
  });

  final GalleryProvider provider;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      elevation: 10,
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: (String result) async {



        if(result == 'View Hidden') {
          if(await Provider.of<GalleryProvider>(context, listen: false).makeAuthentication()){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HiddenScreen(),));
          }
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Recently Deleted',
          child: ListTile(
            leading: Icon(Icons.delete),
            title: Text('Recently Deleted'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'View Hidden',
          child: ListTile(
            leading: Icon(Icons.visibility_off_outlined),
            title: Text('View Hidden'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'Select All',
          child: ListTile(
            leading: Icon(Icons.select_all),
            title: Text('Select All'),
          ),
        ),
      ],
    );
  }
}