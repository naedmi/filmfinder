import 'package:filmfinder/controllers/landing/landing_controller.dart';
import 'package:filmfinder/controllers/landing/landing_providers.dart';
import 'package:filmfinder/models/landing/landing_category.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/common/result_poster_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class LandingPage extends ConsumerWidget {
  final ScrollController _scrollController = ScrollController();

  LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LandingController controller = ref.watch(landingControllerProvider);
    //final StateController<LandingController> notifier = ref.read(landingControllerProvider.notifier);
    return MainBottomBarScaffold(
        controller: _scrollController,
        body: ListView(
          controller: _scrollController,
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
                      onPressed: () {}, icon: const Icon(Remix.settings_line)),
                ],
              ),
            ),
            for (Future<LandingCategory> landingCategory
                in controller.landingCategories)
              OverviewRowWidget(landingCategory: landingCategory),
          ],
        ));
  }
}

class OverviewRowWidget extends StatelessWidget {
  final Future<LandingCategory> landingCategory;

  const OverviewRowWidget({super.key, required this.landingCategory});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LandingCategory>(
        future: landingCategory,
        builder:
            (BuildContext context, AsyncSnapshot<LandingCategory> snapshot) {
          if (snapshot.hasData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: paddingBig, left: padding),
                  child: Text(
                    snapshot.data!.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height:
                      MediaQuery.of(context).size.width / 3 + paddingBig * 2,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      for (ClickablePoster poster in snapshot.data!.posters)
                        ResultPosterWidget(
                            id: poster.movieId, posterPath: poster.posterPath)
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
/*
Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10),
          child: Text(
            'Neu',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 3 + paddingBig * 2,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              ResultPosterWidget(id: 42069, posterPath: null)
            ],
          ),
        ),
      ],
    );
 */
