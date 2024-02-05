import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:profile_ui/utils/constants/colors.dart';
import 'package:profile_ui/utils/constants/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                      image: AssetImage("assets/images/profile.jpg"))),
            ),
            const SizedBox(height: 10),
            Text("Nur Alief Gagah Wicaksono, S.Kom",
                style: Theme.of(context).textTheme.bodyMedium),
            Text("19951027220117",
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      )),
    );
  }
}
