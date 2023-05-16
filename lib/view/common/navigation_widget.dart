import 'package:filmfinder/view/common/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isHome = GoRouter.of(context).location == routeHome;
    final isList = GoRouter.of(context).location == routeList;
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: paddingSmall,
        elevation: paddingSmall,
        surfaceTintColor: Theme.of(context).canvasColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                if (!isHome) {
                  context.push(routeHome);
                }
              },
              icon: Icon(
                isHome ? Icons.home : Icons.home_outlined,
                size: paddingBig,
              ),
            ),
            const SizedBox(width: padding),
            IconButton(
                onPressed: () {
                  if (!isList) {
                    context.push(routeList);
                  }
                },
                icon: Icon(
                  isList ? Icons.bookmark : Icons.bookmark_outline,
                  size: paddingBig,
                )),
          ],
        ));
  }
}

class MainBottomBarScaffold extends StatelessWidget {
  final Widget body;
  final AppBar appBar;

  const MainBottomBarScaffold(
      {super.key, required this.body, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (context.canPop()) {
          context.pop();
          return false;
        } else {
          bool? exitResult = await showDialog(
            context: context,
            builder: (context) => _buildExitDialog(context),
          );
          return exitResult ?? false;
        }
      },
      child: Scaffold(
          appBar: appBar,
          extendBody: true,
          floatingActionButton: SizedBox(
            width: mainActionButtonWidth,
            height: mainActionButtonWidth,
            child: FloatingActionButton(
              onPressed: () {},
              elevation: paddingSmall,
              shape: const CircleBorder(),
              child: GradientDecoration(
                width: mainActionButtonWidth,
                height: mainActionButtonWidth,
                child: IconButton(
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.only(left: paddingSmall / 2),
                    child: Icon(
                      CupertinoIcons.play_arrow_solid,
                      size: mainActionButtonWidth - paddingBig,
                    ),
                  ),
                ),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const BottomNavigationWidget(),
          body: body),
    );
  }

  AlertDialog _buildExitDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure?'),
      content: const Text('We hate to see you leave...'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Yes'),
        ),
      ],
    );
  }
}

customPageBuilder(Widget child, context, state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}

class GradientDecoration extends StatelessWidget {
  final Widget child;

  final double? width;
  final double? height;

  const GradientDecoration(
      {super.key, required this.child, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).canvasColor,
                Theme.of(context).primaryColorLight,
              ])),
      child: child,
    );
  }
}
