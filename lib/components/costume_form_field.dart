import 'package:flutter/material.dart';

class CostumeFormField extends StatelessWidget {
  const CostumeFormField({
    super.key,
    required String label,
    required String hint,
    String? initialValue,
    bool visible = true,
    int? maxLines = 1,
  })  : _label = label,
        _hint = hint,
        _initialValue = initialValue,
        _visible = visible,
        _maxLines = maxLines;

  final String _label;
  final String _hint;
  final String? _initialValue;
  final bool _visible;
  final int? _maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Visibility(
        visible: _visible,
        child: TextFormField(
          maxLines: _maxLines,
          initialValue: _initialValue,
          style: const TextStyle(
            fontSize: 15,
          ),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: _hint,
            labelText: _label,
            floatingLabelStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
            labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.outlineVariant,
              fontSize: 13,
            ),
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.outlineVariant,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
