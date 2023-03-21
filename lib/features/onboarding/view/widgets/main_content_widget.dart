import 'package:car_sharing/features/onboarding/model/onboarding_model.dart';
import 'package:car_sharing/shared/colors/app_colors.dart';
import 'package:car_sharing/shared/text/text_styles.dart';
import 'package:flutter/material.dart';

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({
    super.key,
    required this.onboarding,
    required this.pageIndex,
    required this.value,
  });

  final OnboardingModel onboarding;
  final int pageIndex;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: onboarding.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 38.0),
                  child: Column(
                    children: [
                      Text(
                        onboarding.title,
                        style: AppTextStyles.robotoBold28,
                      ),
                      const SizedBox(height: 12.0),
                      Text(
                        onboarding.text,
                        style: AppTextStyles.robotoBold18,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(onboarding.image),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: SizedBox(
                height: 8.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 8.0,
                  ),
                  itemBuilder: (context, index) {
                    return pageIndex == index
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              width: 24.0,
                              height: 8.0,
                              child: LinearProgressIndicator(
                                value: value,
                                color: AppColors.white,
                                backgroundColor: AppColors.white40,
                              ),
                            ),
                          )
                        : Container(
                            width: 8.0,
                            height: 8.0,
                            decoration: const BoxDecoration(
                              color: AppColors.white40,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                          );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
