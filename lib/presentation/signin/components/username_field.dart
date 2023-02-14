import 'package:flutter/material.dart';
import 'package:ufi/utils/string_text.dart' as string;
import 'package:ufi/utils/text_style.dart' as style;

class UsernameField extends StatelessWidget {
  const UsernameField({
    super.key,
    required TextEditingController username,
  }) : _username = username;

  final TextEditingController _username;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _username,
      style: style.kFormFieldWhiteFontStyle,
      cursorColor: Colors.white,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.white,
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
        hintText: string.kNpkNpo,
        hintStyle: style.kHintTextStyle,
      ),
    );
  }
}
