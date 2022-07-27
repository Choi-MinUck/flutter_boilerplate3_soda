import 'package:flutter/material.dart';

class MyCheckBoxInBody extends StatefulWidget {
  const MyCheckBoxInBody({Key? key}) : super(key: key);
  @override
  State<MyCheckBoxInBody> createState() => _MyCheckBoxInBodyState();
}

class _MyCheckBoxInBodyState extends State<MyCheckBoxInBody> {
  bool _designerCheckBox = false;
  bool _developerCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 15)),
        SizedBox(
            width: 135,
            height: 30,
            child: Row(
              children: [
                Checkbox(
                    value: _designerCheckBox,
                    onChanged: (value) {
                      setState(() {
                        _designerCheckBox = value!;
                      });
                    }),
                Text('Designer'),
              ],
            )),
        SizedBox(
            width: 200,
            height: 30,
            child: Row(
              children: [
                Checkbox(
                    value: _developerCheckBox,
                    onChanged: (value) {
                      setState(() {
                        _developerCheckBox = value!;
                      });
                    }),
                Text('Developer'),
              ],
            )),
      ],
    );
  }
}
