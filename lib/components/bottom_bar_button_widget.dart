import 'package:flutter/material.dart';

import '../theme/dimens.dart';
import 'container_shadow_widget.dart';
import 'primary_button_widget.dart';

class BottomBarButtonWidget extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const BottomBarButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerShadowWidget(
      child: Padding(
        padding: const EdgeInsets.all(spacing_15),
        child: PrimaryButtonWidget(
          title: title,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
