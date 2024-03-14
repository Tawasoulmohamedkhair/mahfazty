import 'package:flutter/material.dart';
import 'package:mahfazty/core/helpers/spacing.dart';
import 'package:mahfazty/core/theming/mycolors.dart';
import 'package:mahfazty/features/login/ui/widgets/build_block_listener.dart';
import 'package:mahfazty/features/login/ui/widgets/do_not_have_account.dart';
import 'package:mahfazty/features/login/ui/widgets/email_and_password.dart';
import 'package:mahfazty/features/login/ui/widgets/terms_and_condition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blackcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(120),
              const EmailAndPassword(),
              verticalSpace(20),
              const TermsAndCondition(),
              verticalSpace(10),
              const DonotHaveaccount(),
              const BuildBlockListener(),
            ],
          ),
        ),
      ),
    );
  }
}
