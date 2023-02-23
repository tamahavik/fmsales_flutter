import 'package:flutter/material.dart';
import 'package:ufi/model/item_chips.dart';

class CostumeSelectedChips extends StatefulWidget {
  const CostumeSelectedChips({
    super.key,
    required Function(String?) callback,
    required String label,
    required List<ItemChips> items,
    bool enable = true,
    int? initialValue,
    bool isError = false,
  })  : _callback = callback,
        _label = label,
        _items = items,
        _enable = enable,
        _initialValue = initialValue,
        _isError = isError;

  final Function(String?) _callback;
  final String _label;
  final List<ItemChips> _items;
  final bool _enable;
  final int? _initialValue;
  final bool _isError;

  @override
  State<CostumeSelectedChips> createState() => _CostumeSelectedChipsState();
}

class _CostumeSelectedChipsState extends State<CostumeSelectedChips> {
  late int? _value = widget._initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget._label,
            style: TextStyle(
              color: widget._isError ? Theme.of(context).colorScheme.error : Colors.black,
            ),
          ),
          Wrap(
            spacing: 5.0,
            children: List.generate(
              widget._items.length,
              (index) {
                return ChoiceChip(
                  label: Text(widget._items[index].label),
                  selected: _value == index,
                  onSelected: widget._enable
                      ? (selected) {
                          setState(() {
                            _value = selected ? index : null;
                            _value != null
                                ? widget._callback(widget._items[_value!].value)
                                : widget._callback('');
                          });
                        }
                      : null,
                );
              },
            ).toList(),
          ),
          Visibility(
            visible: widget._isError,
            child: Text(
              '     pilih salah satu dari pilihan di atas',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                  fontSize: 12,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
