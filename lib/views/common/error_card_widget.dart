import 'package:dio/dio.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class ErrorCardWidget extends StatelessWidget {
  final Object error;
  final StackTrace? stackTrace;
  final AlignmentGeometry? alignment;

  const ErrorCardWidget(
      {Key? key, required this.error, this.stackTrace, this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildErrorCardWidget(),
          )
        : Center(
            child: _buildErrorCardWidget(),
          );
  }

  Card _buildErrorCardWidget() {
    return Card(
        child: error is DioException
            ? const Padding(
                padding: EdgeInsets.all(padding),
                child: Icon(Remix.wifi_off_line, size: defaultLoadingSize),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(padding),
                    child: Icon(Icons.error_outline),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(padding),
                    child: Text(error.toString()),
                  ),
                ],
              ));
  }
}
