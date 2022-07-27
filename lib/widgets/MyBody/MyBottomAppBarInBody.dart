import 'package:flutter/material.dart';

class MyBottomAppBarInBody extends StatelessWidget {
  const MyBottomAppBarInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Divider(
            height: 0,
            indent: 14,
            endIndent: 14,
            thickness: 1,
            color: Color(0xff182949),
          ),
          SizedBox(
            height: 50,
            child: Center(
              child: Text(
                'Copyright 2022 SODA All rights reserved.',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff99000000),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
