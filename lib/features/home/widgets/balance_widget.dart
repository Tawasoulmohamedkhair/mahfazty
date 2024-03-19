import 'package:flutter/material.dart';
import 'package:mahfazty/core/helpers/spacing.dart';
import 'package:mahfazty/core/theming/fonts.dart';
import 'package:mahfazty/core/theming/mycolors.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: MyColors.navycolor,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Your Balance',
                style: FontsHelper.fonts16Boldwhite,
              ),
              verticalSpace(5),
              Text(
                '1000 EGP',
                style: FontsHelper.font28SemiBoldWhite,
              ),
            ],
          ),
          CircleAvatar(
            radius: 30,
            child: IconButton(
              color: Colors.cyan,
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
