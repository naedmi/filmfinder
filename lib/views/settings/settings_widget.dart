import 'package:flutter/material.dart';

import '../common/constants.dart';
import 'settings_switch.dart';

typedef OnPressed = void Function();

class SettingWidget extends StatefulWidget {
  final String settingName;
  final bool withSwitch;
  final bool? switchDefault;
  final Icon settingIcon;
  final OnPressed onPressed;

  const SettingWidget({
    Key? key,
    required this.settingName,
    required this.withSwitch,
    required this.settingIcon,
    required this.onPressed,
    this.switchDefault,
  }) : super(key: key);

  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();
    _switchValue = widget.switchDefault ?? false;
  }

  @override
  Widget build(BuildContext context) {
    SettingSwitch settingSwitch = SettingSwitch(
      switchValue: _switchValue,
      onSwitchChanged: (bool value) {
        setState(() {
          _switchValue = value;
        });
        widget.onPressed();
      },
    );
    return Padding(
      padding: const EdgeInsets.only(top: paddingSmall),
      child: InkWell(
        borderRadius: BorderRadius.circular(settingRoundBoxSize),
        onTap: () {
          if (widget.withSwitch) {
            setState(() {
              _switchValue = !_switchValue;
            });
          }
          widget.onPressed();
        },
        child: SizedBox(
          height: settingHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(child: widget.settingIcon),
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: Center(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.settingName,
                        style: const TextStyle(fontSize: settingFontSize),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Transform.scale(
                  scale: settingSwitchSize,
                  child: widget.withSwitch ? settingSwitch : const SizedBox(),
                  // : const Test(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
