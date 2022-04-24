import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:myapp/VaccinationApp/widgets/withoutLoginLayout.dart';

import '../widgets/LoginForm.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool verifyOtp = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WithOutLoginLayout(
      backgroundImage: 'assets/images/pexels-blue-bird-7210698_2.png',
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          LoginForm(),
        ],
      ),
    );
  }
}
