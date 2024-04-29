import 'package:adv_flutter_ch1/switch%20theme%20using%20provider/screens/main%20screen/view/components/lable_row_with_switch.dart';
import 'package:adv_flutter_ch1/switch%20theme%20using%20provider/utils/lables_list.dart';
import 'package:flutter/material.dart';
import 'components/lable_row_without_switch.dart';
import 'components/user_profile.dart';

class ThemeChangeHomePage extends StatelessWidget {
  const ThemeChangeHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    List<Color> colors = [
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.surface,
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.primary,
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // APP BAR AND USER PROFILE
              const TopUserProfile(),

              const SizedBox(
                height: 60,
              ),

              const LableRowWithSwitch(),

              ...List.generate(
                  lableList.length,
                  (index) => LableRow(
                      lable: lableList[index],
                      color: colors[index],
                      ))
            ],
          ),
        ),
      ),
    );
  }
}


