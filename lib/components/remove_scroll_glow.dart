import 'package:flutter/material.dart';

/*
 * This class for remove scroll glow in list view
 */
class RemoveScrollGlow extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
