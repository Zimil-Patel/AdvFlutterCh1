import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart' as launch;

import 'image_with_lable.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key, required this.url, required this.name, required this.svg,
  });

  final String url, name, svg;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Uri uri = Uri.parse(url);
        launch.launchUrl(uri, mode: launch.LaunchMode.inAppWebView);
      },
      child: ImageWithLable(
        svg: svg,
        lable: name,
        showBorder: false,
        imgSize: 60,
        verticalPadding: 0,
      ),
    );
  }
}