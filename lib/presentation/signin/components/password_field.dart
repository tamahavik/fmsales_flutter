import 'package:flutter/material.dart';
import 'package:ufi/utils/string_text.dart' as string;
import 'package:ufi/utils/text_style.dart' as style;

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required TextEditingController password,
    required bool hideText,
    required VoidCallback onPress,
  })  : _password = password,
        _hideText = hideText,
        _onPress = onPress;

  final TextEditingController _password;
  final bool _hideText;
  final VoidCallback _onPress;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _password,
      style: const TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      obscureText: _hideText,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon:
              Icon(_hideText ? Icons.visibility_rounded : Icons.visibility_off),
          color: Colors.black45,
          onPressed: _onPress,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: string.kPassword,
        hintStyle: style.kHintTextStyle,
      ),
    );
  }
}
