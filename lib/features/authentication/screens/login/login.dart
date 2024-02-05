import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_ui/common/styles/spacing_styles.dart';
import 'package:profile_ui/features/authentication/screens/login/widgets/login_form.dart';
import 'package:profile_ui/features/authentication/screens/login/widgets/login_header.dart';
import 'package:profile_ui/features/authentication/screens/login/widgets/login_social.dart';
import 'package:profile_ui/utils/constants/size.dart';
import 'package:profile_ui/utils/constants/text_strings.dart';
import 'package:profile_ui/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: SpacingStyle.paddingWithAppBarheight,
      child: Column(
        children: [
          /// logo, title
          LoginHeader(),

          /// form
          LoginForm(),

          /// devider
          FormDevider(dividerText: UIIItext.signInWith.capitalize!, dark: dark),
          const SizedBox(height: Sizes.spaceBtwSection),

          /// Footer
          LoginSocial()
        ],
      ),
    )));
  }
}

class FormDevider extends StatelessWidget {
  const FormDevider({super.key, required this.dark, required this.dividerText});

  final String dividerText;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? Colors.grey[850] : Colors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? Colors.grey[850] : Colors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
