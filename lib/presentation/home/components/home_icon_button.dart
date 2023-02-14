import 'package:flutter/material.dart';

class HomeIconButton extends StatelessWidget {
  const HomeIconButton({
    super.key,
    required VoidCallback onPress,
    Color? color,
    required Icon icon,
  })  : _onPress = onPress,
        _color = color,
        _icon = icon;

  final VoidCallback _onPress;
  final Color? _color;
  final Icon _icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: IconButton(
        onPressed: _onPress,
        icon: _icon,
        color: _color,
      ),
    );
  }
}
