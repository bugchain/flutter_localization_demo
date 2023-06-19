import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OnBoardingDisplay {
  final String imagePath;
  final String title;
  final String description;

  OnBoardingDisplay({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

List<OnBoardingDisplay> createOnBoardingDisplays(BuildContext context) {
  return [
    OnBoardingDisplay(
      title: 'on_boarding_title_1'.tr(),
      description: 'on_boarding_description_1'.tr(),
      imagePath: "assets/images/on_boarding_1.png",
    ),
    OnBoardingDisplay(
      title: 'on_boarding_title_2'.tr(),
      description: 'on_boarding_description_2'.tr(),
      imagePath: "assets/images/on_boarding_2.png",
    ),
    OnBoardingDisplay(
      title: 'on_boarding_title_3'.tr(),
      description: 'on_boarding_description_3'.tr(),
      imagePath: "assets/images/on_boarding_3.png",
    ),
  ];
}
