import 'package:filmfinder/view/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import 'common/navigation_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
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
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: IconButton(
                        onPressed: () {},
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
      body: ListView(
        padding: const EdgeInsets.all(padding),
        children: const [
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SearchResultWidget(),
          SizedBox(height: paddingBig * 2)
        ],
      ),
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
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingTiny),
      child: Card(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width / 3 + paddingBig,
            width: MediaQuery.of(context).size.width / 3,
            child: Image.network(
              'https://image.tmdb.org/t/p/w500/6KErczPBROQty7QoIsaa6wJYXZi.jpg',
              fit: BoxFit.cover,
            ),
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
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Movie Title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Movie Description',
                    style: TextStyle(),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Icon(
                      Remix.heart_line,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
