import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'utils/themes/expenses_theme.dart';
import 'utils/images.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: expensesTheme(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const _Logo(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Text(
                      'Get your Money\nUnder Control',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text(
                      'Manage your expenses.\nSeamlessy',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    const _Buttons(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(fontSize: 12),
                          ),
                          TextSpan(
                            text: 'Sign In',
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          const TextSpan(text: '.'),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  static const _spaceBetween = 10.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            const SizedBox(height: _spaceBetween),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: _spaceBetween),
        Column(
          children: [
            Container(
              height: 50 + (_spaceBetween / 2),
              width: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                ),
              ),
            ),
            Container(
              height: 50 + (_spaceBetween / 2),
              width: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonSize = Size(
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height * 0.04,
    );

    return Column(
      children: [
        ElevatedButton(
          child: const Text(
            'Sign Up with Email ID',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(fixedSize: buttonSize),
        ),
        ElevatedButton.icon(
          icon: Image.asset(
            AssetImages.google.path,
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          label: const Text(
            'Sign Up with Google',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black87,
            fixedSize: buttonSize,
          ),
        ),
      ],
    );
  }
}
