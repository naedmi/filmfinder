import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmfinder/model/search_response.dart';
import 'package:filmfinder/provider/search_provider.dart';
import 'package:filmfinder/view/common/constants.dart';
import 'package:filmfinder/view/common/navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchPage> createState() => SearchPageState();
}

class SearchPageState extends ConsumerState<SearchPage> {
  final textController = TextEditingController();

  AsyncValue<SearchResponse> searchResponse = const AsyncValue.loading();
  String query = '';

  @override
  Widget build(BuildContext context) {
    searchResponse = ref.watch(fetchSearchResultProvider(query: query));
    return MainBottomBarScaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(paddingBig + padding),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding, vertical: paddingSmall),
              child: Column(
                children: [
                  TextField(
                    controller: textController,
                    autofocus: true,
                    onSubmitted: (String value) {
                      setState(() {
                        query = textController.text;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: IconButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          setState(() {
                            query = textController.text;
                          });
                        },
                        icon: const Icon(Remix.search_line),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: paddingSmall),
                      enabledBorder: searchBarInputBorder,
                      focusedBorder: searchBarInputBorder,
                      border: searchBarInputBorder,
                    ),
                  ),
                  SizedBox(
                    height: paddingBig,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FilterChip(
                          label: const Text('Genre'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(borderRadiusBig),
                            ),
                          ),
                          avatar: const Icon(Remix.film_line),
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.surfaceVariant,
                          onSelected: (bool value) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Genre'),
                                    content: const Text('Genre'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('OK'))
                                    ],
                                  );
                                });
                          },
                        ),
                        const SizedBox(width: paddingTiny),
                        FilterChip(
                          label: const Text('Blabla'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(borderRadiusBig),
                            ),
                          ),
                          avatar: const Icon(Remix.blaze_line),
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.surfaceVariant,
                          onSelected: (bool value) {},
                        ),
                        const SizedBox(width: paddingTiny),
                        FilterChip(
                          label: const Text('Age'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(borderRadiusBig),
                            ),
                          ),
                          avatar: const Icon(Remix.a_b),
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.surfaceVariant,
                          onSelected: (bool value) {},
                        ),
                        const SizedBox(width: paddingTiny),
                        FilterChip(
                          label: const Text('Service'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(borderRadiusBig),
                            ),
                          ),
                          avatar: const Icon(Remix.amazon_line),
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.surfaceVariant,
                          onSelected: (bool value) {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
      body: searchResponse.when(
          data: (res) => res.results.isNotEmpty
              ? ListView(
                  padding: const EdgeInsets.only(
                      left: padding,
                      top: padding,
                      right: padding,
                      bottom: paddingBig * 2),
                  children: res.results
                      .map((e) => SearchResultWidget(res: e))
                      .toList(),
                )
              : query.isNotEmpty
                  ? const Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(padding),
                          child: Text('No results found'),
                        ),
                      ),
                    )
                  : const Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                        child: SizedBox(
                          height: paddingBig * 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Remix.search_eye_line,
                                  size: paddingBig + padding),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: paddingBig,
                                    right: paddingBig,
                                    top: padding),
                                child: Text('Enter something to search...'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
          error: (err, stack) => Align(
                alignment: Alignment.topCenter,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(padding),
                    child: Text('Could not load data: ${err.toString()}'),
                  ),
                ),
              ),
          loading: () => const Align(
                alignment: Alignment.topCenter,
                child: Card(
                    child: Padding(
                  padding: EdgeInsets.all(padding),
                  child: CircularProgressIndicator(),
                )),
              )),
    );
  }
}

final OutlineInputBorder searchBarInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadiusBig),
  borderSide: const BorderSide(
    color: Colors.transparent,
  ),
);

class SearchResultWidget extends StatelessWidget {
  final SearchResult res;

  const SearchResultWidget({Key? key, required this.res}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingTiny),
      child: Stack(alignment: AlignmentDirectional.centerStart, children: [
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 3 +
                    paddingBig +
                    paddingSmall,
                width: MediaQuery.of(context).size.width / 3,
                child: const SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.all(paddingSmall),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width / 3 +
                      paddingBig -
                      paddingSmall * 2,
                  width: MediaQuery.of(context).size.width / 3 * 2 -
                      paddingBig * 2 -
                      paddingSmall * 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        res.title!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        res.releaseDate!.isNotEmpty
                            ? DateTime.parse(res.releaseDate!).year.toString()
                            : '',
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Icon(
                              Remix.heart_line,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Material(
          elevation: elevation,
          borderRadius: BorderRadius.circular(borderRadiusBig),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadiusBig),
            child: CachedNetworkImage(
              imageUrl: 'https://image.tmdb.org/t/p/w500/${res.posterPath}',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width / 3 + paddingSmall,
              height: MediaQuery.of(context).size.width / 3 + paddingBig * 2,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) =>
                  const Icon(Remix.image_2_line, size: 100),
            ),
          ),
        ),
      ]),
    );
  }
}
