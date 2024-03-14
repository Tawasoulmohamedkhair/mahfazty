part of 'signup_cubit.dart';

abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupSuccessState extends SignupState {}

class SignupLoadingState extends SignupState {}

class SignupErrorState extends SignupState {}
