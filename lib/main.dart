import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/configs/supported_locale.dart';
import 'package:flutter_localization_demo/features/onboarding/tutorial_page.dart';

import 'theme/style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setStatusBarTheme();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale("en"),
      Locale('th'),
    ],
    path: 'assets/translations',
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter localization demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        fontFamily: 'Sarabun',
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const OnBoardingPage(),
      },
    );
  }
}

