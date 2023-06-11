import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:filmfinder/models/movie_details/movie_details.dart';

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
      margin: const EdgeInsets.only(bottom: 16.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: profilePath != null
                  ? Image.network(
                      'https://image.tmdb.org/t/p/w500$profilePath',
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      width: 80.0,
                      height: 80.0,
                      color: Colors.grey, // Filler color
                    ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      actorName ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      characterName ?? '',
                      style: const TextStyle(fontSize: 14.0),
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
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
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
