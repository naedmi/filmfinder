import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:remixicon/remixicon.dart';

class TooltipRatingWidget extends StatelessWidget {
  final double? voteAverage;

  const TooltipRatingWidget({super.key, required this.voteAverage});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'common.rating'.tr(args: <String>[voteAverage.toString()]),
      child: RatingBarIndicator(
        itemSize: padding,
        rating: (voteAverage ?? 0) / 2,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Icon(
            Remix.star_fill,
            color: Theme.of(context).colorScheme.primary,
          );
        },
      ),
    );
  }
}
