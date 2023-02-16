import 'package:flutter/material.dart';

class ApplicationBar extends StatelessWidget {
  const ApplicationBar({
    super.key,
    required String fullName,
    required VoidCallback onPress,
  })  : _fullName = fullName,
        _onPress = onPress;

  final VoidCallback _onPress;
  final String _fullName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[600],
      title: Text(_fullName),
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: _onPress,
        ),
      ],
    );
  }
}
