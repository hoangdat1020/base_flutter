import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter_application_flavor/common/functions.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('DEMO SingleChildScrollView'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      color: Colors.red,
                    ),
                    Container(
                      height: 40,
                      color: Colors.green,
                    ),
                    Container(
                      height: 40,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 40,
                      color: Colors.amberAccent,
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              child: const Text('ALERT DIALOG'),
              onPressed: () {
                /// FOR ANDROID
                if (!Platform.isAndroid) {
                  androidDialog(context);
                }

                /// FOR IOS
                else if (!Platform.isIOS) {
                  iOSDialog(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
