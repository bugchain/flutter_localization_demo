import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/data/dummy_onboarding_data.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import '../../components/bottom_bar_button_widget.dart';
import '../../components/language_button_widget.dart';
import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/style.dart';
import 'language_bottom_sheet.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int selectedPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<OnBoardingDisplay> displays = [];

  @override
  void initState() {
    setStatusBarTheme();
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    displays = createOnBoardingDisplays(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(spacing_15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'hello'.tr(),
                    style: const TextStyle(
                      fontSize: fontSizeLarge,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  LanguageButtonWidget(
                    locale: context.locale,
                    onPressed: () {
                      showLanguageBottomSheet(
                        context,
                        (locale) => context.setLocale(locale),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: spacing_15),
              child: Text(
                'welcome_to_app'.tr(),
                style: const TextStyle(fontSize: fontSizeBody),
              ),
            ),
            const SizedBox(height: spacing_15),
            SizedBox(
              height: 250,
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    selectedPage = page;
                  });
                },
                children: List.generate(
                  displays.length,
                  (index) {
                    return Center(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image:
                              AssetImage(displays[selectedPage].imagePath),
                          fit: BoxFit.fitHeight,
                        )),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: spacing_15),
              child: PageViewDotIndicator(
                padding: EdgeInsets.zero,
                currentItem: selectedPage,
                count: displays.length,
                fadeEdges: false,
                size: const Size(6, 6),
                alignment: Alignment.centerLeft,
                unselectedColor: Colors.black26,
                selectedColor: colorPrimary,
              ),
            ),
            const SizedBox(height: spacing_20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: spacing_15),
              child: Text(
                displays[selectedPage].title,
                style: const TextStyle(
                  fontSize: fontSizeLarge,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: spacing_15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: spacing_15),
              child: Text(
                displays[selectedPage].description,
                style: const TextStyle(fontSize: fontSizeBody),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarButtonWidget(
        title: 'get_start'.tr(),
        onPressed: () {
          // do something, on get start button clicked
        },
      ),
    );
  }
}
