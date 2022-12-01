import 'package:flutter/material.dart';

class HeaderItem {
  HeaderItem({required this.title, required this.onTap, this.isButton = false});

  final bool isButton;
  final VoidCallback onTap;
  final String title;
}
