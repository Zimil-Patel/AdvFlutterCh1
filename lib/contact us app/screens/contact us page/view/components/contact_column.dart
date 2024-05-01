import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launch;
import '../../../../utils/constants.dart';
import 'image_with_lable.dart';

class ContactColumn extends StatelessWidget {
  const ContactColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CALL
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Uri uri = Uri.parse('tel: $mobileNo');
            launch.launchUrl(uri);
          },
          child: ImageWithLable(
            svg: 'mobile',
            lable: mobileNo,
          ),),

        // SMS
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Uri uri = Uri.parse('sms: $mobileNo');
            launch.launchUrl(uri);
          },
          child: ImageWithLable(
            svg: 'sms',
            lable: mobileNo,
          ),),

        // EMAIL
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Uri uri = Uri.parse('mailto: $emailId');
            launch.launchUrl(uri);
          },
          child: ImageWithLable(
            svg: 'email',
            lable: emailId,
          ),),
      ],
    );
  }
}
