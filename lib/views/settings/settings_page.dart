import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/settings/settings_controller_interfaces.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/providers.dart';
import 'package:filmfinder/views/common/about_widget.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/settings/settings_widget.dart';
import 'package:filmfinder/views/settings/user_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:remixicon/remixicon.dart';

typedef OnPressed = void Function();

final ScrollController _controller = ScrollController();

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBottomBarScaffold(
        appBar: AppBar(
          title: const Text('settings.header').tr(context: context),
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
        ref.read(providers.settingsControllerProvider.notifier);
    final SettingsDarkModeModel darkModeModel =
        ref.watch(providers.settingsControllerProvider);
    final SettingsLanguageController languageController =
        ref.read(providers.settingsLanguageControllerProvider.notifier);
    final SettingsLanguageModel languageModel =
        ref.watch(providers.settingsLanguageControllerProvider);
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
              settingName: 'settings.color',
              withSwitch: true,
              switchDefault: darkModeModel.darkMode,
              settingIcon: Icon(
                darkModeModel.darkMode ? Remix.moon_line : Remix.sun_line,
                size: settingIconSize,
              ),
              onPressed: () {
                darkModeController.switchDarkMode();
                settingsSavedToast();
              },
            ),
            SettingWidget(
              settingName: 'settings.parental_control',
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
              settingName: 'settings.lang',
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
                        itemCount: supportedLanguages.keys.toList().length,
                        itemBuilder: (BuildContext context, int index) =>
                            ListTile(
                          horizontalTitleGap: padding,
                          trailing: languageModel.language ==
                                  '${supportedLanguages[supportedLanguages.keys.toList()[index]]?.languageCode}-${supportedLanguages[supportedLanguages.keys.toList()[index]]?.countryCode}'
                              ? const Icon(Remix.check_line)
                              : null,
                          title: Text(supportedLanguages.keys.toList()[index]),
                          onTap: () {
                            String key =
                                supportedLanguages.keys.toList()[index];
                            String? languageCountryCode =
                                '${supportedLanguages[key]?.languageCode}-${supportedLanguages[key]?.countryCode}';
                            languageController.setLanguage(
                              languageCountryCode,
                              context,
                            );
                            EasyLocalization.of(context)!
                                .setLocale(supportedLanguages[key]!);
                            context.setLocale(supportedLanguages[key]!);
                            Navigator.pop(context);
                            settingsSavedToast();
                          },
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      );
                    });
              },
            ),
            SettingWidget(
              settingName: 'settings.about.header',
              withSwitch: false,
              settingIcon: const Icon(
                Remix.information_line,
                size: settingIconSize,
              ),
              onPressed: () {
                showAboutFilmfinder(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

void settingsSavedToast() {
  Fluttertoast.showToast(
      msg: 'settings.save_msg'.tr(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
}
