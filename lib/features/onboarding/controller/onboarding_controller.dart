import 'package:car_sharing/features/onboarding/model/onboarding_model.dart';
import 'package:car_sharing/shared/colors/app_colors.dart';

class OnboardingController {
  static const List<OnboardingModel> data = [
    OnboardingModel(
      backgroundColor: AppColors.yellow,
      title: 'Your first car without a driver\'s license',
      text: 'Goes to meet people who just got their license',
      image: './assets/images/onboarding_page_image_1.png',
    ),
    OnboardingModel(
      backgroundColor: AppColors.lilac,
      title: 'Always there: more than 1000 cars in Tbilisi',
      text: 'Our company is a leader by the number of cars in the fleet',
      image: './assets/images/onboarding_page_image_2.png',
    ),
    OnboardingModel(
      backgroundColor: AppColors.orange,
      title: 'Do not pay for parking, maintenance and gasoline',
      text: 'Do not pay for parking, maintenance and gasoline',
      image: './assets/images/onboarding_page_image_3.png',
    ),
    OnboardingModel(
      backgroundColor: AppColors.blue,
      title: '29 car models: from Skoda Octavia to Porsche 911',
      text: 'Choose between regular car models or exclusive ones',
      image: './assets/images/onboarding_page_image_4.png',
    ),
  ];
}
