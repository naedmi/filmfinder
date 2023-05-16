import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common/navigation_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBottomBarScaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.gear)),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          children: const [
            OverviewScrollWidget(title: 'Neu'),
            OverviewScrollWidget(title: 'Beliebt'),
            OverviewScrollWidget(title: 'Empfehlungen'),
            OverviewScrollWidget(title: 'Anti-Empfehlungen'),
            OverviewScrollWidget(title: 'Gesehen'),
            OverviewScrollWidget(title: 'Gehört'),
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
      children: [
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
            children: const [
              ThumbnailWidget(
                  image:
                      "https://4.bp.blogspot.com/-TPUcWcXSVEo/XL8wbIghG9I/AAAAAAAAHGE/MSmmTGnBkTM6moWJFPsBkWeRqXNUUH-vACLcBGAs/s400/The%2BVelociPastor%2BPoster.jpeg"),
              ThumbnailWidget(
                  image:
                      "https://4.bp.blogspot.com/-TPUcWcXSVEo/XL8wbIghG9I/AAAAAAAAHGE/MSmmTGnBkTM6moWJFPsBkWeRqXNUUH-vACLcBGAs/s400/The%2BVelociPastor%2BPoster.jpeg"),
              ThumbnailWidget(
                  image:
                      "https://4.bp.blogspot.com/-TPUcWcXSVEo/XL8wbIghG9I/AAAAAAAAHGE/MSmmTGnBkTM6moWJFPsBkWeRqXNUUH-vACLcBGAs/s400/The%2BVelociPastor%2BPoster.jpeg"),
              ThumbnailWidget(
                  image:
                      "https://4.bp.blogspot.com/-TPUcWcXSVEo/XL8wbIghG9I/AAAAAAAAHGE/MSmmTGnBkTM6moWJFPsBkWeRqXNUUH-vACLcBGAs/s400/The%2BVelociPastor%2BPoster.jpeg"),
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
