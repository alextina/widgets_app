import 'package:flutter/material.dart';

class MenuItem {
  final String tittle;
  final String subtitle;
  final String path;
  final IconData icon;

  const MenuItem({
    required this.tittle,
    required this.subtitle,
    required this.path,
    required this.icon
  });
}

const appMenuItems = <MenuItem>[

  MenuItem(
    tittle: 'Buttons',
    subtitle: 'Many flutter buttons',
    path: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

    MenuItem(
    tittle: 'Cards',
    subtitle: 'Stylized container',
    path: '/card',
    icon: Icons.credit_card,
  ),

];