import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  //TODO : AppBar, Switch
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff182949),
      title: const Text('SODA'),
      actions: const <Widget>[
        MyAppBarSwitch(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyAppBarSwitch extends StatefulWidget {
  const MyAppBarSwitch({Key? key}) : super(key: key);

  @override
  State<MyAppBarSwitch> createState() => _MyAppBarSwitchState();
}

class _MyAppBarSwitchState extends State<MyAppBarSwitch> {
  bool isSwitched = false;

  void showSnackBar(newValue) {
    if (newValue)
      ScaffoldMessenger.of(context).showSnackBar(getMySnackBar(null, null));
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (newValue) {
        setState(() {
          isSwitched = newValue;
          showSnackBar(newValue);
        });
      },
      activeTrackColor: const Color(0xff4B6EB1),
      activeColor: const Color(0xffFFFFFF),
    );
  }
}

SnackBar getMySnackBar(String? label, String? text) {
  return SnackBar(
    action: SnackBarAction(
      label: label ?? 'OK',
      textColor: const Color.fromRGBO(249, 153, 153, 1),
      onPressed: () {
        // Code to execute.
      },
    ),
    content: Text(text ?? 'switch를 ON 하였습니다.'),
    duration: const Duration(milliseconds: 3000),
    backgroundColor: const Color.fromRGBO(57, 57, 57, 1),
    behavior: SnackBarBehavior.fixed,
  );
}
