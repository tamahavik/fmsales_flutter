import 'package:flutter/material.dart';

class CostumeDropdownForm extends StatefulWidget {
  const CostumeDropdownForm({
    super.key,
    required String hint,
    required String label,
    required String? value,
    bool visible = true,
    bool enable = true,
    required List<String> items,
    Function(String?)? callback,
  })  : _label = label,
        _hint = hint,
        _value = value,
        _visible = visible,
        _enable = enable,
        _items = items,
        _callback = callback;

  final String _hint;
  final String _label;
  final String? _value;
  final bool _visible;
  final bool _enable;
  final List<String> _items;
  final Function(String?)? _callback;

  @override
  State<CostumeDropdownForm> createState() => _CostumeDropdownFormState();
}

class _CostumeDropdownFormState extends State<CostumeDropdownForm> {
  String? _value;

  @override
  Widget build(BuildContext context) {
    _value = widget._value;
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Visibility(
        visible: widget._visible,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            enabled: widget._enable,
            border: const OutlineInputBorder(),
            hintText: widget._hint,
            labelText: widget._label,
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
          items: widget._items.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          onChanged: widget._callback == null ? null : (value) {
            setState(() {
              _value = value as String?;
            });
            if (widget._callback != null) {
              widget._callback!(value as String?);
            }
          },
        ),
      ),
    );
  }
}
