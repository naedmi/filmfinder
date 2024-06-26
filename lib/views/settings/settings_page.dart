import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/controllers/search/search_controller.dart'
    as search_controller;
import 'package:filmfinder/controllers/settings/settings_controller_interfaces.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/views/common/about_widget.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/common/toast.dart';
import 'package:filmfinder/views/settings/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

typedef OnPressed = void Function();

final ScrollController _controller = ScrollController();

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBottomBarScaffold(
        appBar: AppBar(
          title:
              Center(child: const Text('settings.header').tr(context: context)),
          automaticallyImplyLeading: false,
        ),
        body: const Padding(
          padding: EdgeInsets.all(paddingSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
    final search_controller.SearchController searchController =
        ref.watch(providers.searchControllerProvider.notifier);
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
            // Dark mode
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
                savedToast();
              },
            ),
            // Language
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
                                  supportedLanguages.keys.toList()[index]
                              ? const Icon(Remix.check_line)
                              : null,
                          title:
                              Text(supportedLanguages.values.toList()[index]),
                          onTap: () {
                            String key =
                                supportedLanguages.keys.toList()[index];
                            String? languageCountryCode =
                                supportedLanguages.keys.toList()[index];
                            languageController.setLanguage(
                              languageCountryCode,
                              context,
                            );
                            searchController.setLanguage(languageCountryCode);
                            EasyLocalization.of(context)!
                                .setLocale(supportedLocales[key]!);
                            context.setLocale(supportedLocales[key]!);
                            Navigator.pop(context);
                            savedToast();
                          },
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      );
                    });
              },
            ),
            // About
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
