import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'utils/images.dart';
import 'utils/themes/tinder_theme.dart';

const _initColor = Color(0xFFea7860);
const _finalColor = Color(0xFFe3537a);

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: tinderTheme(),
      child: Builder(
        builder: (context) {
          return Material(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.centerLeft,
                  colors: [_initColor, _finalColor],
                ),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FractionallySizedBox(
                            widthFactor: 0.6,
                            child: Image.asset(AssetImages.tinder.path),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                          const _Terms(),
                          const SizedBox(height: 20),
                          const _SignInButton(
                            label: 'Sign in with apple',
                            icon: FontAwesomeIcons.apple,
                          ),
                          const SizedBox(height: 8),
                          const _SignInButton(
                            label: 'Sign in with facebook',
                            icon: FontAwesomeIcons.facebook,
                          ),
                          const SizedBox(height: 8),
                          const _SignInButton(
                            label: 'Sign in with phone number',
                            icon: FontAwesomeIcons.solidComment,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Trouble Signing In?',
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(height: 28),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({
    required this.label,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 1.5, color: Theme.of(context).hintColor),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Icon(icon, size: 18),
            ),
            Expanded(
              child: Text(label.toUpperCase(), textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}

class _Terms extends StatelessWidget {
  const _Terms({Key? key}) : super(key: key);

  TextSpan _buildLink(String label) {
    return TextSpan(
      text: label,
      style: const TextStyle(
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      recognizer: TapGestureRecognizer()..onTap = () {},
    );
  }

  TextSpan _buildNormal(String label) {
    return TextSpan(
      text: label,
      style: const TextStyle(fontSize: 12),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      overflow: TextOverflow.clip,
      text: TextSpan(
        children: [
          _buildNormal(
            'By tapping Create Account or Sign In, you agree to our ',
          ),
          _buildLink('Terms'),
          _buildNormal('. Learn how we process your data in our '),
          _buildLink('Privacy Policy'),
          _buildNormal(' and '),
          _buildLink('Cookies Policy'),
          _buildNormal('.'),
        ],
      ),
    );
  }
}
