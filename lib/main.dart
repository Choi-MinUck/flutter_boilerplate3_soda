import 'package:flutter/material.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyAppBar.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyDrawer.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyBody/MyBody.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyFloatingActionButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Boilerplate3 SODA',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(), //TODO : appBar: complete
        drawer: MyDrawer(), //TODO : drawer: complete
        body: MyBody(), //TODO : body: Theme in progress
        floatingActionButton:
            MyFloatingActionButton(), //TODO : floatingActionButton: complete
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
