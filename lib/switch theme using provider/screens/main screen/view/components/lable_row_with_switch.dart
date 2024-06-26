import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class LableRowWithSwitch extends StatelessWidget {
  const LableRowWithSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        children: [
          // ICON
          Icon(
            Provider.of<ThemeProvider>(context, listen: false).getThemeMode()
                ? Icons.nightlight_round
                : Icons.sunny,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(
            width: 26,
          ),

          // TITLE
          Text(
            Provider.of<ThemeProvider>(context, listen: false).getThemeMode()
                ? 'Dark mode'
                : 'Light Mode',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
          ),

          const Spacer(),

          // THEME TOGGLE SWITCH
          // GFToggle(
          //   value: Provider.of<ThemeProvider>(context, listen: false)
          //       .getThemeMode(),
          //   onChanged: (value) {
          //     Provider.of<ThemeProvider>(context, listen: false)
          //         .toggleThemePreference(value!);
          //   },
          //   enabledText: '',
          //   disabledText: '',
          //   disabledThumbColor: Colors.purple,
          //   enabledTrackColor:
          //       Theme.of(context).colorScheme.primary.withOpacity(0.5),
          //   enabledThumbColor: Theme.of(context).colorScheme.primary,
          //   type: GFToggleType.custom,
          // )

          Switch(
            inactiveThumbColor: Theme.of(context).colorScheme.primary,
            inactiveTrackColor: Colors.grey,
            trackOutlineColor: const MaterialStatePropertyAll(Colors.grey),
            trackOutlineWidth: const MaterialStatePropertyAll(0),
            activeColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            thumbColor:
                MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
            value: Provider.of<ThemeProvider>(context, listen: false)
                .getThemeMode(),
            onChanged: (value) {
              Provider.of<ThemeProvider>(context, listen: false)
                  .toggleThemePreference(value);
            },
          )
        ],
      ),
    );
  }
}
