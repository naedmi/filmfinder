import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

import 'common/constants.dart';
import 'common/navigation_widget.dart';

final ScrollController _controller = ScrollController();

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBottomBarScaffold(
        controller: _controller,
        body: ListView(
          controller: _controller,
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        context.push(routeSearch);
                      },
                      icon: const Icon(
                        Remix.search_line,
                      )),
                  IconButton(
                      onPressed: () {
                        context.push(routeSettings);
                      },
                      icon: const Icon(Remix.settings_line)),
                ],
              ),
            ),
            const OverviewScrollWidget(title: 'Neu'),
            const OverviewScrollWidget(title: 'Beliebt'),
            const OverviewScrollWidget(title: 'Empfehlungen'),
            const OverviewScrollWidget(title: 'Anti-Empfehlungen'),
            const OverviewScrollWidget(title: 'Gesehen'),
            const OverviewScrollWidget(title: 'Gehört'),
          ],
        ));
  }
}

class OverviewScrollWidget extends StatelessWidget {
  final String title;

  const OverviewScrollWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              ThumbnailWidget(
                  image:
                      'https://4.bp.blogspot.com/-TPUcWcXSVEo/XL8wbIghG9I/AAAAAAAAHGE/MSmmTGnBkTM6moWJFPsBkWeRqXNUUH-vACLcBGAs/s400/The%2BVelociPastor%2BPoster.jpeg'),
              ThumbnailWidget(
                  image:
                      'https://4.bp.blogspot.com/-TPUcWcXSVEo/XL8wbIghG9I/AAAAAAAAHGE/MSmmTGnBkTM6moWJFPsBkWeRqXNUUH-vACLcBGAs/s400/The%2BVelociPastor%2BPoster.jpeg'),
              ThumbnailWidget(
                  image:
                      'https://4.bp.blogspot.com/-TPUcWcXSVEo/XL8wbIghG9I/AAAAAAAAHGE/MSmmTGnBkTM6moWJFPsBkWeRqXNUUH-vACLcBGAs/s400/The%2BVelociPastor%2BPoster.jpeg'),
              ThumbnailWidget(
                  image:
                      'https://4.bp.blogspot.com/-TPUcWcXSVEo/XL8wbIghG9I/AAAAAAAAHGE/MSmmTGnBkTM6moWJFPsBkWeRqXNUUH-vACLcBGAs/s400/The%2BVelociPastor%2BPoster.jpeg'),
            ],
          ),
        ),
      ],
    );
  }
}

class ThumbnailWidget extends StatelessWidget {
  final String image;

  const ThumbnailWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(image),
      ),
    );
  }
}
