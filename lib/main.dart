import 'package:flutter/material.dart';

import 'pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instagram UI',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: ProfilePage());
  }
}
