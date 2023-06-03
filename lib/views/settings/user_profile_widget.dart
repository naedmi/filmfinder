import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: 200,
          //toDo replace with picture of account
          child: Icon(
            Remix.account_circle_line,
            size: 180,
          ),
        ),
        /*
          * text field with account information
          * get data for specific account
          */
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Text('Name: Carsten Stahl\n'
                  'Email: carsten.stahl@zugriff.de\n'
                  'Age: 69'),
            ),
          ),
        ),
      ],
    );
  }
}
