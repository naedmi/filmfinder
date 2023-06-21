import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void showAboutFilmfinder(BuildContext context) {
  showAboutDialog(
      context: context,
      applicationIcon: const Image(
        image: AssetImage('assets/images/filmfinder_logo.png'),
        height: 50,
      ),
      applicationName: 'filmfinder',
      applicationVersion: '0.0.1',
      children: <Widget>[
        Text('settings.about.text'.tr()),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: padding, bottom: padding),
            child: SvgPicture.asset(
              'assets/images/tmdb_blue_long.svg',
              height: 15,
            ),
          ),
        ),
        Text('settings.about.attribution'.tr()),
      ]);
}
