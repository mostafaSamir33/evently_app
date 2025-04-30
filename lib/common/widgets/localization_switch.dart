import 'package:flutter/material.dart';

import '../app_assets.dart';
import '../app_colors.dart';

class LocalizationSwitch extends StatefulWidget {
  const LocalizationSwitch({super.key});

  @override
  State<LocalizationSwitch> createState() => _LocalizationSwitchState();
}

class _LocalizationSwitchState extends State<LocalizationSwitch> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: switchValue,
      onChanged: (value) {
        switchValue = value;
        setState(() {});
      },
      activeThumbImage: AssetImage(AppImages.arabicIcon),
      inactiveThumbImage: AssetImage(AppImages.englishIcon),
      trackColor: WidgetStatePropertyAll(Colors.transparent),
      trackOutlineColor: WidgetStatePropertyAll(AppColors.mainColor),
    );
  }
}
