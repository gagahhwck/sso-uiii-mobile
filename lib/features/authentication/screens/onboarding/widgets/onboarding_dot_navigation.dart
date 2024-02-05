import 'package:flutter/material.dart';
import 'package:profile_ui/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:profile_ui/utils/constants/colors.dart';
import 'package:profile_ui/utils/constants/size.dart';
import 'package:profile_ui/utils/device/device_utility.dart';
import 'package:profile_ui/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = Helpers.isDarkMode(context);
    return Positioned(
        bottom: UIIIDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: Sizes.defaultSpace,
        child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? UIIIColors.light : UIIIColors.maritime,
              dotHeight: 6),
        ));
  }
}
