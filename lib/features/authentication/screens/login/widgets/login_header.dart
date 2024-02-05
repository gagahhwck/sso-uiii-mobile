import 'package:flutter/material.dart';
import 'package:profile_ui/utils/constants/image_strings.dart';
import 'package:profile_ui/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          width: 200,
          height: 150,
          image: AssetImage(UIIIimages.logoFull),
        ),
        Text(
          UIIItext.welcomeTitle,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
