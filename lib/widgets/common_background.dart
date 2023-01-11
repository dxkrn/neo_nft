import 'package:flutter/material.dart';

class CommonBackground extends StatelessWidget {
  const CommonBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img_main_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
