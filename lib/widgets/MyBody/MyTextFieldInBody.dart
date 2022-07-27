import 'package:flutter/material.dart';

class MyTextFieldInBody extends StatelessWidget {
  const MyTextFieldInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 350,
      height: 75,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
          ),
          hintText: 'Name',
          hintStyle: TextStyle(fontSize: 16, color: Color(0xff636363)),
          fillColor: Color.fromRGBO(21, 21, 21, 0.08),
          filled: true,
        ),
      ),
    );
  }
}
