import 'package:flutter/material.dart';

enum Gender { Male, Female }

class MyRadioInBody extends StatefulWidget {
  const MyRadioInBody({Key? key}) : super(key: key);

  @override
  State<MyRadioInBody> createState() => _MyRadioInBodyState();
}

class _MyRadioInBodyState extends State<MyRadioInBody> {
  Gender? _gender = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 135,
          height: 30,
          child: ListTile(
            title: const Text('Male'),
            leading: Radio<Gender>(
              value: Gender.Male,
              groupValue: _gender,
              onChanged: (Gender? value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
        ),
        SizedBox(
          width: 200,
          height: 30,
          child: ListTile(
            title: const Text('Female'),
            leading: Radio<Gender>(
              value: Gender.Female,
              groupValue: _gender,
              onChanged: (Gender? value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
