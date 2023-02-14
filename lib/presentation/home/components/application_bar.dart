import 'package:flutter/material.dart';

class ApplicationBar extends StatelessWidget {
  const ApplicationBar({
    super.key,
    required String fullName,
  }) : _fullName = fullName;

  final String _fullName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[600],
      title: Text(_fullName),
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {},
        ),
      ],
    );
  }
}
