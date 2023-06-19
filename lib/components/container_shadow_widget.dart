import 'package:flutter/material.dart';

class ContainerShadowWidget extends StatelessWidget {
  const ContainerShadowWidget({
    Key? key,
    required this.child,
    this.borderRadius,
    this.width,
    this.backgroundColor,
  }) : super(key: key);

  final Widget child;
  final double? borderRadius;
  final double? width;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          color: backgroundColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: child,
    );
  }
}
