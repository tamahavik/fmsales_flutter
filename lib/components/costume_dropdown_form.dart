import 'package:flutter/material.dart';

class CostumeDropdownForm extends StatelessWidget {
  const CostumeDropdownForm({
    super.key,
    required String hint,
    required String label,
    required String? value,
    bool visible = true,
    bool enable = true,
    required List<String> items,
    Function(String?)? onChange,
  })  : _label = label,
        _hint = hint,
        _value = value,
        _visible = visible,
        _enable = enable,
        _items = items,
        _onChange = onChange;

  final String _hint;
  final String _label;
  final String? _value;
  final bool _visible;
  final bool _enable;
  final List<String> _items;
  final Function(String?)? _onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Visibility(
        visible: _visible,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            enabled: _enable,
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
          isExpanded: true,
          hint: const Text('- Silahkan Pilih -'),
          value: _value,
          items: _items.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          onChanged: _onChange,
        ),
      ),
    );
  }
}
