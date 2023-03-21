import 'package:car_sharing/features/onboarding/view/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarSharing());
}

class CarSharing extends StatelessWidget {
  const CarSharing({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingPage(),
    );
  }
}
