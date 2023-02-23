import 'package:flutter/material.dart';
import 'package:ufi/enums/gender_enum.dart';
import 'package:ufi/model/item_chips.dart';

class ChipsGender extends StatefulWidget {
  const ChipsGender({
    super.key,
    required Function(String?) callback,
  }) : _callback = callback;

  final Function(String?) _callback;

  @override
  State<ChipsGender> createState() => _ChipsGenderState();
}

class _ChipsGenderState extends State<ChipsGender> {
  final List<ItemChips> _genderChips = [
    ItemChips(GenderEnum.male.value, GenderEnum.male.value),
    ItemChips(GenderEnum.female.value, GenderEnum.female.value),
  ];
  int? _value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Gender'),
          Wrap(
            spacing: 5.0,
            children: List<Widget>.generate(
              _genderChips.length,
              (index) {
                return ChoiceChip(
                  label: Text(_genderChips[index].label),
                  selected: _value == index,
                  onSelected: (selected) {
                    setState(() {
                      _value = selected ? index : null;
                      _value != null
                          ? widget._callback(_genderChips[_value!].value)
                          : widget._callback('');
                    });
                  },
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
