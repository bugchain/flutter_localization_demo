
// Text Title
import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

Widget textTitleWidget(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSizeTitle,
      color: colorDarkTextPrimary,
    ),
  );
}

// Text Sub-Title
Widget textSubTitleWidget(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSizeSubTitle,
      color: colorDarkTextPrimary,
    ),
  );
}

// Text Body
Widget textBodyWidget(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: fontSizeBody,
      color: colorDarkTextSecondary,
    ),
  );
}

// Text Info small text
Widget textInfoWidget(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: fontSizeInfo,
      color: colorDarkTextSecondary,
    ),
  );
}