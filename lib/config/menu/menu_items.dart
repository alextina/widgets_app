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
    path: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItem(
    tittle: 'ProgressIndicators',
    subtitle: 'General and Controlled',
    path: '/progress',
    icon: Icons.refresh_rounded,
  ),

    MenuItem(
    tittle: 'SnackBars and Dialog',
    subtitle: 'Kind of alerts and dialogs',
    path: '/snackbars',
    icon: Icons.info_outline_rounded,
  ),

  MenuItem(
    tittle: 'Animated Container',
    subtitle: 'Animated stateful widget',
    path: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),

  MenuItem(
    tittle: 'UI Controls + Tiles',
    subtitle: 'Some controls',
    path: '/ui_controls',
    icon: Icons.car_rental_rounded,
  ),
];