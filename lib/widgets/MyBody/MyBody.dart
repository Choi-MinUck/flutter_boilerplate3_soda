import 'package:flutter/material.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyBody/MyTextFieldInBody.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyBody/MyRadioInBody.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyBody/MyCheckBoxInBody.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyBody/MySelectDateInBody.dart';
import 'package:flutter_boilerplate3_soda/widgets/MyBody/MyBottomAppBarInBody.dart';

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        Padding(padding: EdgeInsets.only(bottom: 29.5)),
        Align(
          alignment: Alignment.center,
          child:
              MyTextFieldInBody(), //TODO : TextField inprogress - textfield를 터치하고 입력할 때 Name이 상단에 안 뜨게 하기
        ),
        Padding(padding: EdgeInsets.only(bottom: 20)),
        Align(
          alignment: Alignment.topLeft,
          child: MyRadioInBody(),
        ),
        Padding(padding: EdgeInsets.only(bottom: 20)),
        Align(
          alignment: Alignment.topLeft,
          child: MyCheckBoxInBody(),
        ),
        Padding(padding: EdgeInsets.only(bottom: 50)),
        Align(
          alignment: Alignment.topLeft,
          child: MySelectDateInBody(),
        ),
        Padding(padding: EdgeInsets.only(bottom: 360)),
        Align(
          alignment: Alignment.bottomCenter,
          child: MyBottomAppBarInBody(),
        ),
      ],
    );
  }
}
