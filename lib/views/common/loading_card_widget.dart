import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';

class LoadingCardWidget extends StatelessWidget {
  final AlignmentGeometry? alignment;

  const LoadingCardWidget({Key? key, this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildLoadingCardWidget(),
          )
        : Center(
            child: _buildLoadingCardWidget(),
          );
  }

  Card _buildLoadingCardWidget() {
    return const Card(
        child: Padding(
      padding: EdgeInsets.all(padding),
      child: CircularProgressIndicator(),
    ));
  }
}
