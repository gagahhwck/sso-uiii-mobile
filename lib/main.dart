import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_ui/features/authentication/screens/onboarding/onboarding.dart';
import 'package:profile_ui/utils/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const OnBoardingScreen(),
      themeMode: ThemeMode.system,
      theme: UIIIAppTheme.lightTheme,
      darkTheme: UIIIAppTheme.darkTheme,
    );
  }
}
