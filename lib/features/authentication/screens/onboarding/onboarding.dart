import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_ui/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:profile_ui/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:profile_ui/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:profile_ui/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:profile_ui/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:profile_ui/utils/constants/image_strings.dart';
import 'package:profile_ui/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: UIIIimages.onBoardingImages1,
                title: UIIItext.onBoardingTitle1,
                subTitle: UIIItext.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: UIIIimages.onBoardingImages2,
                title: UIIItext.onBoardingTitle2,
                subTitle: UIIItext.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: UIIIimages.onBoardingImages3,
                title: UIIItext.onBoardingTitle3,
                subTitle: UIIItext.onBoardingSubtitle3,
              ),
            ],
          ),
          // skip button
          const OnBoardingSkip(),
          // dot next pages
          const OnBoardingDotNavigation(),
          // circular button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
