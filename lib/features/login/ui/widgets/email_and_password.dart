import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahfazty/core/helpers/spacing.dart';
import 'package:mahfazty/core/theming/fonts.dart';
import 'package:mahfazty/core/theming/mycolors.dart';
import 'package:mahfazty/core/widgets/my_button.dart';
import 'package:mahfazty/core/widgets/text_form_field.dart';
import 'package:mahfazty/features/login/logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({
    super.key,
  });

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isobscure = true;
  late TextEditingController emailcontroller;
  late TextEditingController passwordcontroller;
  @override
  void initState() {
    emailcontroller = context.read<LoginCubit>().emailController;
    passwordcontroller = context.read<LoginCubit>().passwordController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back!',
            style: FontsHelper.font28SemiBoldWhite,
          ),
          verticalSpace(10),
          Text(
            'Email',
            style: FontsHelper.fonts16Boldwhite,
          ),
          verticalSpace(10),
          MyTextFormfield(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter Your Email';
              }
              return null;
            },
            controller: emailcontroller,
            isobsucre: false,
            hintText: 'Enter Your Email',
          ),
          verticalSpace(20),
          Text(
            'PassWord',
            style: FontsHelper.fonts16Boldwhite,
          ),
          verticalSpace(10),
          MyTextFormfield(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter Your Password';
              }
              return null;
            },
            controller: passwordcontroller,
            isobsucre: isobscure,
            suffexicon: IconButton(
              icon: isobscure
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onPressed: () {
                setState(() {
                  isobscure = !isobscure;
                });
              },
            ),
            hintText: 'Enter Your Password',
          ),
          verticalSpace(20),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot PassWord',
              style: FontsHelper.fonts16Boldwhite,
            ),
          ),
          verticalSpace(50),
          MyButton(
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.0, 1.0],
                colors: [MyColors.orangecolor, MyColors.yellowcolor]),
            onpressed: () {
              validatethenlogin();
            },
            child: Text(
              'Login',
              style: FontsHelper.fonts16Boldwhite,
            ),
          ),
        ],
      ),
    );
  }

  validatethenlogin() {
    if (context.read<LoginCubit>().formkey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }
}
