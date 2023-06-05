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
    return MainBottomBarScaffold(
        controller: _scrollController,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          title: const Text('Home'),
          titleSpacing: padding,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  context.push(routeSearch);
                },
                icon: const Icon(
                  Remix.search_line,
                )),
            IconButton(onPressed: () {}, icon: const Icon(Remix.settings_line)),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.refresh();
          },
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.all(10),
            shrinkWrap: true,
            children: <Widget>[
              for (Future<LandingCategory> landingCategory
                  in controller.landingCategories)
                OverviewRowWidget(landingCategory: landingCategory),
              const SizedBox(height: paddingBig * 2),
            ],
          ),
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
                  padding: const EdgeInsets.only(
                      top: paddingSmall, left: padding, bottom: paddingTiny),
                  child: Text(
                    snapshot.data!.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 3 +
                      paddingBig * 2 +
                      padding,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: padding),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int i) => Container(
                        margin: const EdgeInsets.only(bottom: padding),
                        child: ResultPosterWidget(
                            id: snapshot.data!.posters[i].movieId,
                            posterPath: snapshot.data!.posters[i].posterPath)),
                    itemCount: snapshot.data!.posters.length,
                    separatorBuilder: (BuildContext context, int i) =>
                        const SizedBox(width: paddingSmall),
                  ),
                ),
              ],
            );
          } else {
            return const Padding(
              padding: EdgeInsets.only(top: paddingBig),
              child: Center(
                child: Card(
                  shape: CircleBorder(
                      side: BorderSide(
                    color: Colors.transparent,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            );
          }
        });
  }
}
