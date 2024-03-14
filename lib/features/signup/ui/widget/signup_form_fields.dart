import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahfazty/core/helpers/spacing.dart';
import 'package:mahfazty/core/theming/fonts.dart';
import 'package:mahfazty/core/widgets/text_form_field.dart';
import 'package:mahfazty/features/signup/logic/cubit/signup_cubit.dart';

class SignupFormFields extends StatefulWidget {
  const SignupFormFields({
    super.key,
  });

  @override
  State<SignupFormFields> createState() => _SignupFormFieldsState();
}

class _SignupFormFieldsState extends State<SignupFormFields> {
  bool isobscure = true;
  late TextEditingController namecontroller;
  late TextEditingController emailcontroller;
  late TextEditingController passwordcontroller;
  late TextEditingController passwordconfirmationcontroller;

  @override
  void initState() {
    namecontroller = context.read<SignupCubit>().nameController;
    emailcontroller = context.read<SignupCubit>().emailController;
    passwordcontroller = context.read<SignupCubit>().passwordController;
    passwordconfirmationcontroller =
        context.read<SignupCubit>().passwordconfirmationController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome To Mahfazty',
            style: FontsHelper.font28SemiBoldWhite,
          ),
          verticalSpace(10),
          Text(
            'Name',
            style: FontsHelper.fonts16Boldwhite,
          ),
          verticalSpace(10),
          MyTextFormfield(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter Your Name';
              }
              return null;
            },
            controller: namecontroller,
            isobsucre: false,
            hintText: 'Enter Your Name',
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
          verticalSpace(10),
          Text(
            'PassWord',
            style: FontsHelper.fonts16Boldwhite,
          ),
          verticalSpace(10),
          MyTextFormfield(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please re-nter Your Password';
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
          Text(
            'PassWord Confirmation',
            style: FontsHelper.fonts16Boldwhite,
          ),
          verticalSpace(10),
          MyTextFormfield(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please re-enter Your PassWord';
              } else if (passwordconfirmationcontroller.text.trim() !=
                  passwordcontroller.text.trim()) {
                return "Password Doesn't match";
              }
              return null;
            },
            controller: passwordconfirmationcontroller,
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
            hintText: 'RE-enter Your PassWord',
          ),
          verticalSpace(10),
        ],
      ),
    );
  }
}
