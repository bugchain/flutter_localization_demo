
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../theme/dimens.dart';

void showLanguageBottomSheet(BuildContext context, Function(Locale locale) onPressed) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius:
      BorderRadius.vertical(top: Radius.circular(20)),
    ),
    context: context,
    builder: (builder) {
      return SizedBox(
        height: 230,
        child: Padding(
          padding: const EdgeInsets.all(spacing_15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'select_language'.tr(),
                style: const TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: spacing_15),
              ListTile(
                onTap: () {
                  onPressed(const Locale('th'));
                  Navigator.pop(context);
                },
                title: Text(
                  'thai_language'.tr(),
                  style: const TextStyle(
                      fontSize: fontSizeBody),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  onPressed(const Locale('en'));
                  Navigator.pop(context);
                },
                title: Text(
                  'english_language'.tr(),
                  style: const TextStyle(
                      fontSize: fontSizeBody),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}