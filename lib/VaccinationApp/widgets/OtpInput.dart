import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  final TextEditingController controller;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: Material(
        elevation: 5.0,
        shadowColor: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        child: TextField(
          autofocus: autoFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          maxLength: 1,
          cursorColor: Theme.of(context).primaryColor,
          decoration: const InputDecoration(
              counterText: '',
              hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
