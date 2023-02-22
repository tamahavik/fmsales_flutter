import 'package:flutter/material.dart';
import 'package:ufi/enums/gender_enum.dart';

class GenderRadioButton extends StatefulWidget {
  const GenderRadioButton({
    super.key,
    required Function(String?) callback,
  }) : _callback = callback;
  final Function(String?) _callback;

  @override
  State<GenderRadioButton> createState() => _GenderRadioButtonState();
}

class _GenderRadioButtonState extends State<GenderRadioButton> {
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Gender'),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RadioListTile(
                title: Text(GenderEnum.male.value),
                value: GenderEnum.male.value,
                contentPadding: const EdgeInsets.all(0),
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                  widget._callback(value);
                },
              ),
            ),
            Expanded(
              child: RadioListTile(
                title: Text(GenderEnum.female.value),
                value: GenderEnum.female.value,
                contentPadding: const EdgeInsets.all(0),
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                  widget._callback(value);
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
