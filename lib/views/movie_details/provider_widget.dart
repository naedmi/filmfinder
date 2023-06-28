import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/models/watch_provider/movie_provider_response.dart';
import 'package:filmfinder/providers.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class ProviderLogoWidget extends ConsumerWidget {
  final WatchProviders? watchProviders;

  const ProviderLogoWidget({Key? key, this.watchProviders}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String language = FilmfinderPreferences.getLanguage();
    final String countryCode = language.split('-').last;

    if (watchProviders != null &&
        watchProviders!.results != null &&
        watchProviders!.results![countryCode] != null &&
        watchProviders!.results![countryCode]!.flatrate != null &&
        watchProviders!.results![countryCode]!.flatrate!.isNotEmpty) {
      final List<MovieWatchProvider> freeProviders =
          watchProviders!.results![countryCode]!.flatrate!;
      return Wrap(
        spacing: paddingSmall,
        runSpacing: paddingTiny,
        children: freeProviders
            .map((MovieWatchProvider provider) => Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: paddingTiny, vertical: paddingTiny),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(paddingSmall),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://image.tmdb.org/t/p/w500${provider.logoPath}',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ))
            .toList(),
      );
    }
    return Wrap(
      spacing: paddingSmall,
      runSpacing: paddingTiny,
      children: List.generate(
        4,
        (_) => Container(
          width: providerLogoSize,
          height: providerLogoSize,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(paddingSmall),
          ),
        ),
      ),
    );
  }
}

class MovieProvidersWidget extends ConsumerWidget {
  final WatchProviders? watchProviders;

  const MovieProvidersWidget({Key? key, this.watchProviders}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SettingsDarkModeModel darkModeModel =
        ref.watch(providers.settingsControllerProvider);

    return Column(
      children: [
        ProviderLogoWidget(watchProviders: watchProviders),
        const SizedBox(height: paddingTiny),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(bottom: padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'details.attribution'.tr(),
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
                SvgPicture.asset(
                  darkModeModel.darkMode
                      ? 'assets/images/jw_logo_color.svg'
                      : 'assets/images/jw_logo_black.svg',
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
