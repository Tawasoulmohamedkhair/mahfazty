import 'package:flutter/material.dart';
import 'package:mahfazty/core/helpers/spacing.dart';
import 'package:mahfazty/core/theming/fonts.dart';

class ExpenseTileWidget extends StatelessWidget {
  const ExpenseTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 41, 39, 78),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Electristy',
                      style: FontsHelper.fonts16Boldwhite,
                    ),
                    verticalSpace(10),
                    Text(
                      '17 mar , 2024',
                      style: FontsHelper.fonts16Boldwhite,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    '-200 EGP',
                    style: FontsHelper.fonts16Boldwhite,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
              ))
        ],
      ),
    );
  }
}
