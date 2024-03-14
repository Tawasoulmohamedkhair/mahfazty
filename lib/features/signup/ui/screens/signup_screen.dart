import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahfazty/core/helpers/spacing.dart';
import 'package:mahfazty/core/theming/fonts.dart';
import 'package:mahfazty/core/theming/mycolors.dart';
import 'package:mahfazty/core/widgets/my_button.dart';
import 'package:mahfazty/features/login/logic/cubit/login_cubit.dart';
import 'package:mahfazty/features/login/ui/widgets/terms_and_condition.dart';
import 'package:mahfazty/features/signup/logic/cubit/signup_cubit.dart';
import 'package:mahfazty/features/signup/ui/widget/signup_form_fields.dart';
import 'package:mahfazty/features/signup/ui/widget/signup_listener_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blackcolor,
      appBar: AppBar(
        backgroundColor: MyColors.blackcolor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(50),
                const SignupFormFields(),
                const TermsAndCondition(),
                verticalSpace(20),
                MyButton(
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.0, 1.0],
                      colors: [MyColors.orangecolor, MyColors.yellowcolor]),
                  onpressed: () {
                    validatethenSignup();
                  },
                  child: Text(
                    'SignUp',
                    style: FontsHelper.fonts16Boldwhite,
                  ),
                ),
                verticalSpace(20),
                const SignupListenerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  validatethenSignup() {
    if (context.read<SignupCubit>().formkey.currentState!.validate()) {
      context.read<SignupCubit>().signup();
    }
  }
}
