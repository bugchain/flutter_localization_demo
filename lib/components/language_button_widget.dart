import 'package:flutter/material.dart';
import '../theme/dimens.dart';
import 'primary_linear_gradient_widget.dart';

class LanguageButtonWidget extends StatelessWidget {

  final void Function() onPressed;
  final Locale locale;

  const LanguageButtonWidget({
    Key? key,
    required this.onPressed,
    required this.locale,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: primaryLinearGradientWidget,
          borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
          child: Row(
            children: [
              Text(
                locale.languageCode.toUpperCase(),
                style: const TextStyle(color: Colors.white,
                    fontSize: fontSizeInfo,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
