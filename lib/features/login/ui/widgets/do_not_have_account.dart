import 'package:flutter/material.dart';
import 'package:mahfazty/core/helpers/spacing.dart';
import 'package:mahfazty/core/routing/routes.dart';
import 'package:mahfazty/core/theming/fonts.dart';

class DonotHaveaccount extends StatelessWidget {
  const DonotHaveaccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "D'not have anaccount?",
          style: FontsHelper.fonts13Bolwhite,
        ),
        horizontialSpace(20),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.signup);
          },
          child: const Text('Sign up'),
        ),
      ],
    );
  }
}
