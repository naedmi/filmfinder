import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmfinder/services/common/poster_service.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class ResultPosterWidget extends StatelessWidget {
  final int id;
  final String? posterPath;

  const ResultPosterWidget(
      {super.key, required this.id, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.pushNamed(
          'details',
          pathParameters: <String, String>{'id': id.toString()},
        );
      },
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(borderRadiusBig),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadiusBig),
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: CachedNetworkImage(
              imageUrl: posterUrl(path: posterPath ?? ''),
              fit: BoxFit.cover,
              placeholder: (BuildContext context, String url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (BuildContext context, String url, _) =>
                  const Icon(Remix.image_2_line, size: 100),
            ),
          ),
        ),
      ),
    );
  }
}
