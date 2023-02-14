import 'package:flutter/material.dart';

class LoginButtonLoading extends StatelessWidget {
  const LoginButtonLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ElevatedButton(
      onPressed: null,
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
