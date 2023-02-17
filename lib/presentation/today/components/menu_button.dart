import 'package:flutter/material.dart';
import 'package:ufi/enums/task_menu_enum.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<TaskMenuEnum>(
      icon: Icon(
        Icons.more_vert,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      onSelected: (value) {print(value);},
      itemBuilder: (context) => <PopupMenuEntry<TaskMenuEnum>>[
        const PopupMenuItem<TaskMenuEnum>(
          value: TaskMenuEnum.call,
          child: Text('Call'),
        ),
        const PopupMenuItem<TaskMenuEnum>(
          value: TaskMenuEnum.navigate,
          child: Text('Navigate'),
        ),
      ],
    );
  }
}
