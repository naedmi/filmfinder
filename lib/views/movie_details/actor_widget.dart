import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';

class ActorCard extends StatelessWidget {
  final String? profilePath;
  final String? actorName;
  final String? characterName;

  const ActorCard({
    Key? key,
    this.profilePath,
    this.actorName,
    this.characterName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: paddingSmall),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadiusSmall),
              child: profilePath != null
                  ? Image.network(
                      'https://image.tmdb.org/t/p/w500$profilePath',
                      width: portraitPosterWidth,
                      height: portraitPosterHeight,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      width: portraitPosterWidth,
                      height: portraitPosterHeight,
                      color: Colors.grey, // Filler color
                    ),
            ),
            const SizedBox(width: padding),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      actorName ?? '',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: paddingTiny),
                    Text(
                      characterName ?? '',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilmActorsList extends StatelessWidget {
  final List<Cast>? actors;

  const FilmActorsList({Key? key, this.actors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Cast> topActors = actors?.take(10).toList() ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'details.top_actors'.tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: paddingSmall),
        Column(
          children: topActors.map((Cast actor) {
            return ActorCard(
              profilePath: actor.profilePath,
              actorName: actor.name,
              characterName: actor.character,
            );
          }).toList(),
        ),
      ],
    );
  }
}
