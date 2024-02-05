import 'package:flutter/material.dart';
import 'package:profile_ui/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:profile_ui/utils/constants/size.dart';
import 'package:profile_ui/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: UIIIDeviceUtils.getAppBarHeight(),
        right: Sizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(context),
          child: const Text('Skip'),
        ));
  }
}
