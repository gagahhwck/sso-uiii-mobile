import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:profile_ui/navigation_menu.dart';
import 'package:profile_ui/utils/constants/size.dart';
import 'package:profile_ui/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.spaceBtwSections),
        child: Column(
          children: [
            /// email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: UIIItext.email),
            ),
            const SizedBox(height: Sizes.spaceBtwInputFields),

            /// password
            TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Iconsax.eye_slash),
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: UIIItext.password),
            ),
            const SizedBox(height: Sizes.spaceBtwInputFields / 2),

            /// remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// remember me
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const Text(UIIItext.rememberMe),
                  ],
                ),

                /// forget password
                TextButton(
                    onPressed: () {},
                    child: const Text(UIIItext.forgetPassword)),
              ],
            ),
            const SizedBox(height: Sizes.spaceBtwSections),

            /// sign in button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    child: const Text(UIIItext.signIn))),
            const SizedBox(
              height: Sizes.spaceBtwItems,
            )
            // button
          ],
        ),
      ),
    );
  }
}
