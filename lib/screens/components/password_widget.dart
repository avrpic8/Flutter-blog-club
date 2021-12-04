import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool passwordState = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: passwordState,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
          label: const Text('Password'),
          suffixIcon: TextButton(
            onPressed: () {
              setState(() {
                passwordState = !passwordState;
              });
            },
            child: Text(
              passwordState ? 'Show' : 'Hide',
            ),
          )),
    );
  }
}