import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            //toDo add login functionality
          },
          child: const Text('settings.login').tr(context: context),
        ),
      ),
    );
  }
}
