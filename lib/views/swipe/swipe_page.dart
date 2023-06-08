import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget_main_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:remixicon/remixicon.dart';
import 'package:webviewtube/webviewtube.dart';

class SwipePage extends StatelessWidget {
  const SwipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final WebviewtubeController controller = WebviewtubeController();
    return SimpleBottomBarScaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.antiAlias,
                  children: <Widget>[
                    Positioned(
                      top: MediaQuery.of(context).padding.top * 2,
                      left: -paddingBig * 2,
                      width: MediaQuery.of(context).size.width + paddingBig * 4,
                      child: WebviewtubeVideoPlayer(
                        videoId: 'eoOaKN4qCKw',
                        controller: controller,
                        options: const WebviewtubeOptions(
                          autoPlay: true,
                          enableCaption: false,
                          forceHd: true,
                          loop: true,
                          mute: false,
                          showControls: false,
                        ),
                      ),
                    ),
                  ]),
            ),
            const Divider(endIndent: padding, indent: padding),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(padding),
                ),
                margin: const EdgeInsets.all(padding),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - padding * 2,
                  height: MediaQuery.of(context).size.height / 3 + padding,
                  child: Padding(
                    padding: const EdgeInsets.all(padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Fast X',
                            style: Theme.of(context).textTheme.headlineMedium),
                        const Divider(),
                        Row(
                          children: <Widget>[
                            RatingBarIndicator(
                              itemSize: padding,
                              rating: 4.5,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                              },
                            ),
                            const Spacer(),
                            const Text('1337 votes')
                          ],
                        ),
                        const Divider(),
                        RichText(
                          maxLines: 5,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultricies nunc, quis aliquet nisl nunc eu nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultricies nunc, quis aliquet nisl nunc eu nisl.',
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Remix.netflix_line),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Remix.amazon_line),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Remix.youtube_line),
                              onPressed: () {},
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(Remix.share_forward_line),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ]),
    );
  }
}
