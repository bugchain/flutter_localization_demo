import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isWhiteBackground,
  }) : super(key: key);

  final String title;
  final void Function() onPressed;
  final bool? isWhiteBackground;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(
            (isWhiteBackground ?? false) ? Colors.white : colorPrimary,
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              vertical: spacing_15,
              horizontal: spacing_20,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: (isWhiteBackground ?? false) ? colorPrimary : Colors.white,
            fontSize: fontSizeSubTitle,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
