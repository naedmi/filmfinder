import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';

class CardMessageWidget extends StatelessWidget {
  final String messageKey;
  final IconData icon;

  const CardMessageWidget(
      {super.key, required this.messageKey, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Card(
        child: SizedBox(
          height: paddingBig * 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: paddingBig + padding),
              Padding(
                padding: const EdgeInsets.only(
                    left: paddingBig, right: paddingBig, top: padding),
                child: Text(messageKey).tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
