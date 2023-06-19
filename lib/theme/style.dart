import 'package:flutter/services.dart';

import 'colors.dart';

void setStatusBarTheme() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        systemNavigationBarColor: colorNavBar,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: colorNavBar),
  );
}
