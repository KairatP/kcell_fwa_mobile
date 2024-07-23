part of 'auth_bloc.dart';

abstract class AuthEvent {}

class MyAuthEvent extends AuthEvent {}

class MyAuthDeniedEvent extends AuthEvent {}