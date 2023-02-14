import 'package:flutter/material.dart';
import 'package:ufi/utils/string_text.dart' as string;

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required VoidCallback onPress,
  }) : _onPress = onPress;

  final VoidCallback _onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPress,
      child: const Text(string.kSignInCapital),
    );
  }
}