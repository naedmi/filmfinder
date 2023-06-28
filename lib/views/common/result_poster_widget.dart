import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmfinder/services/common/poster_service.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class ResultPosterWidget extends StatelessWidget {
  final int id;
  final String? posterPath;
  final String? category;

  const ResultPosterWidget(
      {super.key, required this.id, required this.posterPath, this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          'details',
          pathParameters: <String, String>{'id': id.toString()},
          queryParameters: <String, String>{
            if (category != null) 'category': category!,
          },
        );
      },
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(borderRadiusBig),
        child: Hero(
          tag: '$id$category',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadiusBig),
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: CachedNetworkImage(
                imageUrl: posterUrl(
                    path: posterPath ?? '', width: PosterSizes.w500.name),
                fit: BoxFit.cover,
                placeholder: (BuildContext context, String url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (BuildContext context, String url, _) =>
                    const Icon(Remix.image_2_line, size: 100),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
