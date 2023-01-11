import 'package:flutter/material.dart';

class LoginSignupBackground extends StatelessWidget {
  const LoginSignupBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/onboarding/img_bg_2.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
