import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mahfazty/core/Networking/firebase_helper.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final FireBaseHelper firebaseHelper;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordconfirmationController =
      TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  SignupCubit(this.firebaseHelper) : super(SignupInitial());
  signup() async {
    emit(SignupLoadingState());
    try {
      await firebaseHelper
          .registerUser(
              emailController.text.trim(), passwordController.text.trim())
          .then((value) => emit(SignupSuccessState()));
    } catch (e) {
      emit(SignupErrorState());
    }
  }
}
