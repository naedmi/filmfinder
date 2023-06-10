import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/landing/landing_controller.dart';
import 'package:filmfinder/controllers/landing/landing_providers.dart';
import 'package:filmfinder/models/landing/landing_category.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/common/result_poster_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
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
          title: GestureDetector(
            onTap: () {
              // TODO: Add about page
            },
            onLongPress: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: Text(
                            'filmfinder™',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    );
                  });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadiusBig),
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                padding: const EdgeInsets.all(1),
                child: const Image(
                    image: AssetImage(logoPath),
                    fit: BoxFit.contain,
                    height: 42),
              ),
            ),
          ),
          titleSpacing: padding,
          actions: <Widget>[
            Hero(
              tag: iconHeroTag,
              child: IconButton(
                  onPressed: () {
                    context.push(routeSearch);
                  },
                  icon: const Icon(
                    Remix.search_line,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: paddingTiny),
              child: IconButton(
                  onPressed: () {
                    context.push(routeSettings);
                  },
                  icon: const Icon(Remix.settings_line)),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.refresh();
          },
          child: ListView(
            controller: _scrollController,
            shrinkWrap: true,
            children: <Widget>[
              for (Future<LandingCategory> landingCategory
                  in controller.landingCategories)
                OverviewRowWidget(landingCategory: landingCategory),
              const SizedBox(height: paddingBig),
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
            FlutterNativeSplash.remove();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Divider(endIndent: padding, indent: padding),
                Padding(
                  padding: const EdgeInsets.only(
                      top: paddingSmall, left: padding, bottom: paddingTiny),
                  child: Text(
                    snapshot.data!.title.tr(),
                    style: Theme.of(context).textTheme.headlineMedium,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: posterContainerDefaultHeight(context) + padding,
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
                        const SizedBox(width: paddingTiny),
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            FlutterNativeSplash.remove();
            return Column(
              children: <Widget>[
                const Divider(endIndent: padding, indent: padding),
                SizedBox(
                  height: posterContainerDefaultHeight(context) + padding,
                  child: const Center(
                    child: Card(
                      shape: CircleBorder(
                          side: BorderSide(
                        color: Colors.transparent,
                      )),
                      child: Padding(
                        padding: EdgeInsets.all(padding),
                        child: Icon(Remix.wifi_off_line),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: <Widget>[
                const Divider(endIndent: padding, indent: padding),
                SizedBox(
                  height: posterContainerDefaultHeight(context) + padding,
                  child: const Center(
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
                ),
              ],
            );
          }
        });
  }
}
