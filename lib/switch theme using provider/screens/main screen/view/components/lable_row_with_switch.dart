import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class LableRowWithSwitch extends StatelessWidget {
  const LableRowWithSwitch({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        children: [
          // ICON
          Icon(Provider.of<ThemeProvider>(context, listen: false).getThemeMode() ? Icons.nightlight_round : Icons.sunny, color: Theme.of(context).colorScheme.primary,),
          const SizedBox(width: 26,),

          // TITLE
          Text(Provider.of<ThemeProvider>(context, listen: false).getThemeMode() ? 'Dark mode' : 'Light Mode', style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),

          const Spacer(),

          // THEME TOGGLE SWITCH
          GFToggle(
            value: Provider.of<ThemeProvider>(context, listen: true).getThemeMode(),
            onChanged: (value) {
              Provider.of<ThemeProvider>(context, listen: false).toggleThemeMode(value!);
            },
            enabledText: '',
            disabledText: '',
            disabledThumbColor: Colors.purple,
            enabledTrackColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            enabledThumbColor: Theme.of(context).colorScheme.primary,
            type: GFToggleType.custom,
          )
        ],
      ),
    );
  }
}