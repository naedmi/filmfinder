import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/models/watch_provider/movie_provider_response.dart';
import 'package:filmfinder/services/common/shared_preferences.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remixicon/remixicon.dart';

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
            .map((MovieWatchProvider provider) => Tooltip(
                  message: provider.providerName,
                  child: Container(
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
                  ),
                ))
            .toList(),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(paddingSmall),
      child: Column(
        children: <Widget>[
          const Icon(Remix.emotion_sad_line),
          Center(
            child: Text(
              'details.providers'.tr(),
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
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
      children: <Widget>[
        ProviderLogoWidget(watchProviders: watchProviders),
        const SizedBox(height: paddingTiny),
        Align(
          alignment: Alignment.center,
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
                    ? justWatchImagePathLight
                    : justWatchImagePathDark,
                height: justWatchImageHeight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
