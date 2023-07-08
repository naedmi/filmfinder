import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/services/common/shared_preferences.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';

class CertificationWidget extends StatelessWidget {
  final ReleaseDateQuery? releaseDateQuery;

  const CertificationWidget({
    Key? key,
    required this.releaseDateQuery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String language = FilmfinderPreferences.getLanguage();
    final String countryCode = language.split('-').last;
    final Releases? countryRelease = releaseDateQuery?.results.firstWhere(
      (Releases release) => release.iso31661 == countryCode,
      orElse: () =>
          const Releases(iso31661: '', releaseDates: <ReleaseDateResult>[]),
    );

    if (countryRelease?.iso31661 != '' &&
        countryRelease!.releaseDates.isNotEmpty) {
      return Row(
        children: <Widget>[
          const SizedBox(width: paddingTiny),
          _CircleSeparator(),
          const SizedBox(width: paddingTiny),
          Text(
            countryRelease.releaseDates.first.certification,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(width: paddingTiny),
          _CircleSeparator(),
          const SizedBox(width: paddingTiny),
        ],
      );
    } else {
      return Row(
        children: <Widget>[
          const SizedBox(width: paddingTiny),
          _CircleSeparator(),
          const SizedBox(width: paddingTiny),
        ],
      );
    }
  }
}

class _CircleSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: paddingTiny,
      height: paddingTiny,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
    );
  }
}
