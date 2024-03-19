import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mahfazty/core/Networking/firebase_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final FireBaseHelper firebaseHelper;
  LoginCubit(this.firebaseHelper) : super(LoginInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  login() async {
    emit(LoginLoadingState());
    try {
      await firebaseHelper
          .loginUser(
              emailController.text.trim(), passwordController.text.trim())
          .then(
            (value) => emit(LoginSuccessState()),
          );
    } catch (e) {
      emit(LoginErrorState());
    }
  }
}
