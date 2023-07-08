import 'package:flutter/material.dart';

class SettingSwitch extends StatelessWidget {
  final bool switchValue;
  final ValueChanged<bool> onSwitchChanged;

  const SettingSwitch({
    super.key,
    required this.switchValue,
    required this.onSwitchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: switchValue,
      activeColor: Colors.white,
      onChanged: onSwitchChanged,
    );
  }
}
