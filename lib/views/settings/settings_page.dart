import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../common/constants.dart';
import '../common/navigation_widget.dart';
import 'settings_widget.dart';
import 'user_profile_widget.dart';

final ScrollController _controller = ScrollController();

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBottomBarScaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          automaticallyImplyLeading: false,
        ),
        body: const Padding(
          padding: EdgeInsets.all(paddingSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              UserProfile(),
              Divider(),
              Settings(),
            ],
          ),
        ));
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double localPadding = 8.0;
    return Padding(
      padding: const EdgeInsets.only(
          bottom: localPadding, left: localPadding, right: localPadding),
      child: SizedBox(
        height:
            MediaQuery.of(context).size.height - 400, // Set a specific height
        child: ListView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SettingWidget(
              settingName: 'appearance',
              withSwitch: true,
              settingIcon: const Icon(
                Remix.moon_clear_line,
                size: settingIconSize,
              ),
              onPressed: () {},
            ),
            SettingWidget(
              settingName: 'filter',
              settingIcon: const Icon(
                Remix.filter_2_line,
                size: settingIconSize,
              ),
              withSwitch: true,
              onPressed: () {
                //toDo open filter
              },
            ),
            SettingWidget(
              settingName: 'parental control',
              settingIcon: const Icon(
                Remix.parent_line,
                size: settingIconSize,
              ),
              withSwitch: false,
              onPressed: () {
                //toDo open parent settings
              },
            ),
            SettingWidget(
              settingName: 'about',
              settingIcon: const Icon(
                Remix.information_line,
                size: settingIconSize,
              ),
              withSwitch: false,
              onPressed: () {
                //toDo open about page
              },
            ),
          ],
        ),
      ),
    );
  }
}
