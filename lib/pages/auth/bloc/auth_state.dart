part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthLoadedState extends AuthState {
  AuthLoadedState({required this.emailController, required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;
}