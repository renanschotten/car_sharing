import 'package:car_sharing/features/onboarding/controller/onboarding_controller.dart';
import 'package:car_sharing/features/onboarding/view/widgets/main_content_widget.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with SingleTickerProviderStateMixin {
  int currentPage = 0;
  int initialPage = 0;
  final PageController pageController = PageController();
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(_animationListener);
    animationController.forward();
  }

  bool get isLastPage => currentPage >= 4;

  void _animationListener() {
    setState(() {});
    pageController.addListener(pageListener);
    if (isLastPage) {
      currentPage = initialPage;
      pageController.jumpToPage(initialPage);
    }
    if (animationController.isCompleted) {
      currentPage++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      animationController.reset();
      animationController.forward();
    }
  }

  void pageListener() => currentPage = pageController.page!.floor();

  @override
  void dispose() {
    animationController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: 4,
        itemBuilder: (context, index) {
          return MainContentWidget(
            onboarding: OnboardingController.data[index],
            pageIndex: index,
            value: animationController.value,
          );
        },
      ),
    );
  }
}
