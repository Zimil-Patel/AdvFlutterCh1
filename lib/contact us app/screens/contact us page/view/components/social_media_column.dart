import 'package:adv_flutter_ch1/contact%20us%20app/screens/contact%20us%20page/view/components/social_media_button.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import 'custom_divider.dart';

class SocialMediaColumn extends StatelessWidget {
  const SocialMediaColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin:  EdgeInsets.symmetric(horizontal: 10, vertical: defaultPadding + 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue.withOpacity(0.1), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text('Social Media', style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 22,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),
          ),

          const CustomDivider(),

          const SocialMediaButton(svg: 'github', name: 'Github', url: 'https://github.com/Zimil-Patel',),

          const CustomDivider(padding: 20,),

          const SocialMediaButton(svg: 'linkedin', name: 'Linked in', url: 'https://www.linkedin.com/in/zimil-patel/',),

          const CustomDivider(padding: 20,),

        ],
      ),
    );
  }
}

