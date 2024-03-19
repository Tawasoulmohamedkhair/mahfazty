import 'package:flutter/material.dart';
import 'package:mahfazty/core/theming/fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.white,
          style: const ButtonStyle(),
        ),
        Text(
          'My Wallest',
          style: FontsHelper.fonts16Boldwhite,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
          color: Colors.white,
        )
      ],
    );
  }
}
