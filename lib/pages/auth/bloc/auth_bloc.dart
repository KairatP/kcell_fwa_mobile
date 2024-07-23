import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState()) {
    on<MyAuthEvent>(_onMyAuthEvent);
  }

  Future<void> _onMyAuthEvent(
    MyAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoadedState(emailController: _emailController, passwordController: _passwordController));
  }
}


final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
