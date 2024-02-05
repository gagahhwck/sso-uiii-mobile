import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:profile_ui/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:profile_ui/utils/constants/colors.dart';
import 'package:profile_ui/utils/constants/size.dart';
import 'package:profile_ui/utils/device/device_utility.dart';
import 'package:profile_ui/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Positioned(
        right: Sizes.defaultSpace,
        bottom: UIIIDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor:
                    dark ? UIIIColors.primary : UIIIColors.maritime),
            onPressed: () => OnBoardingController.instance.nextPage(context),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
