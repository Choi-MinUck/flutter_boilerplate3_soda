import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 60),
      child: FloatingActionButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            content: const Text('+ 버튼을 누르셨습니다.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('확인'),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xff182949),
        child: const Icon(
          Icons.add,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
