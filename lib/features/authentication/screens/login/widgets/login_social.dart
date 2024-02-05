import 'package:flutter/material.dart';
import 'package:profile_ui/utils/constants/image_strings.dart';
import 'package:profile_ui/utils/constants/size.dart';

class LoginSocial extends StatelessWidget {
  const LoginSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: Sizes.iconMd,
                height: Sizes.iconMd,
                image: AssetImage(UIIIimages.googleLogo),
              )),
        ),
      ],
    );
  }
}
