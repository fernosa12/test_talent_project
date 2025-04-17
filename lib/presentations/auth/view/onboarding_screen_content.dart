import 'package:test_clean_architecture/constant/app_assets.dart';

import '../../../constant/app_constant.dart';

class OnboardingContent {
  final String image;
  final String title;
  final String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnboardingContent> contents = [
  OnboardingContent(
    image: AppAssets.assetImagesOnboarding1,
    title: AppConstant.onboardingTitle1,
    description: AppConstant.onboardingDescription1,
  ),
  OnboardingContent(
    image: AppAssets.assetImagesOnboarding2,
    title: AppConstant.onboardingTitle2,
    description: AppConstant.onboardingDescription2,
  ),
  OnboardingContent(
    image: AppAssets.assetImagesOnboarding3,
    title: AppConstant.onboardingTitle3,
    description: AppConstant.onboardingDescription3,
  ),
];
