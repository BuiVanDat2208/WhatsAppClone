import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';

showAlertDialog({
  required BuildContext context,
  required String messages,
  String? btnText,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(
          messages,
          style: TextStyle(
            color: context.theme.greyColor,
            fontSize: 15,
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                btnText ?? "Ok",
                style: TextStyle(
                  color: context.theme.blueColor,
                ),
              ))
        ],
      );
    },
  );
}