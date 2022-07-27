import 'package:flutter/material.dart';

class MySelectDateInBody extends StatefulWidget {
  const MySelectDateInBody({Key? key}) : super(key: key);

  @override
  State<MySelectDateInBody> createState() => _MySelectDateInBodyState();
}

class _MySelectDateInBodyState extends State<MySelectDateInBody> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2001),
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            '버튼을 눌러 날짜를 선택해주세요.',
          ),
          const Padding(padding: EdgeInsets.only(left: 10)),
          OutlinedButton(
              onPressed: () => _selectDate(context),
              child: const Text('SELECT DATE')),
        ],
      ),
    );
  }
}
