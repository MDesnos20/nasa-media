import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/apod/presentation/blocs/download/download_cubit.dart';

class CustomTopBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTopBar({
    required this.icon,
    required this.title,
    required this.customAction,
    super.key,
  });

  final Widget icon;
  final String title;
  final Function() customAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: icon,
        onPressed: customAction,
      ),
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
