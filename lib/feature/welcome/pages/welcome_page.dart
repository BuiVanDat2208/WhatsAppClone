import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/widget/custom_elevated_button.dart';
import 'package:whatsapp_clone/feature/welcome/widget/language_button.dart';
import 'package:whatsapp_clone/feature/welcome/widget/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: context.theme.blueColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
              child: Column(
            children: [
              const Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const PrivacyAndTerms(),
              CustomElevatedButton(
                onPressed: () {},
                text: 'AGREE AND CONTINUE',
              ),
              const SizedBox(height: 50),
              const LanguageButton(),
            ],
          ))
        ],
      ),
    );
  }
}
