import 'package:filmfinder/controllers/settings/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

import '../../controllers/settings/settings_controller_interfaces.dart';
import '../../models/settings/settings.dart';
import '../common/constants.dart';
import '../common/navigation_widget.dart';
import 'settings_widget.dart';
import 'user_profile_widget.dart';

typedef OnPressed = void Function();

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

class Settings extends ConsumerWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingsDarkModeController darkModeController =
        ref.read(settingsControllerProvider.notifier);
    final SettingsDarkModeModel darkModeModel =
        ref.watch(settingsControllerProvider);
    final SettingsLanguageController languageController =
        ref.read(settingsLanguageControllerProvider.notifier);
    final SettingsLanguageModel languageModel =
        ref.watch(settingsLanguageControllerProvider);
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
              settingName: darkMode,
              withSwitch: true,
              switchDefault: darkModeModel.darkMode,
              settingIcon: Icon(
                darkModeModel.darkMode ? Remix.moon_line : Remix.sun_line,
                size: settingIconSize,
              ),
              onPressed: () {
                darkModeController.switchDarkMode();
              },
            ),
            SettingWidget(
              settingName: parentalControl,
              settingIcon: const Icon(
                Remix.parent_line,
                size: settingIconSize,
              ),
              withSwitch: false,
              onPressed: () {
                //todo parental control page
              },
            ),
            SettingWidget(
              settingName: language,
              settingIcon: const Icon(
                Remix.translate_2,
                size: settingIconSize,
              ),
              withSwitch: false,
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return ListView.separated(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(padding),
                        itemCount: settingLangs.length,
                        itemBuilder: (BuildContext context, int index) =>
                            ListTile(
                          horizontalTitleGap: padding,
                          trailing:
                              languageModel.language == settingLangs[index]
                                  ? const Icon(Remix.check_line)
                                  : null,
                          title: Text(settingLangs[index]),
                          onTap: () {
                            languageController.setLanguage(
                              settingLangs[index],
                            );
                            Navigator.pop(context);
                          },
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      );
                    });
              },
            ),
            SettingWidget(
              settingName: about,
              withSwitch: false,
              settingIcon: const Icon(
                Remix.information_line,
                size: settingIconSize,
              ),
              onPressed: () {
                //todo open about popup
              },
            )
          ],
        ),
      ),
    );
  }
}
