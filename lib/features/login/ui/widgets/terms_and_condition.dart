import 'package:flutter/material.dart';
import 'package:mahfazty/core/theming/fonts.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'By continuing , you agree to our Terms \n of use and Privacy Policy',
        style: FontsHelper.fonts13Boldgrey,
        textAlign: TextAlign.center,
      ),
    );
  }
}
