import 'package:flutter/material.dart';

class AuthErrorScreen extends StatelessWidget {
  const AuthErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Вход в аккаунт'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Вход в аккаунт'),
      ),
    );
  }
}
 