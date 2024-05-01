import 'package:adv_flutter_ch1/app%20list/my_app.dart';
import 'package:adv_flutter_ch1/contact%20us%20app/screens/contact%20us%20page/view/components/contact_column.dart';
import 'package:adv_flutter_ch1/contact%20us%20app/screens/contact%20us%20page/view/components/social_media_column.dart';
import 'package:adv_flutter_ch1/switch%20theme/utils/constants.dart';
import 'package:flutter/material.dart';

class ContactUsHomePage extends StatelessWidget {
  const ContactUsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APP BAR
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: Text(
          'Contact Us',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w900, fontSize: 26, color: Colors.blue),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.blue,
            )),
      ),

      //BODY
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding, horizontal: defaultPadding + 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'If you have any quries, get in touch with us. We will be happy to help you!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
              ),

              const SizedBox(
                height: defaultPadding * 2,
              ),

              //CONTACT OPTIONS
              const ContactColumn(),
              
              
              //SOCIAL MEDIAS
              const SocialMediaColumn(),
            ],
          ),
        ),
      ),
    );
  }
}




