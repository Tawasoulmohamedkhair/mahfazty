import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahfazty/core/helpers/spacing.dart';
import 'package:mahfazty/core/theming/fonts.dart';
import 'package:mahfazty/features/home/widgets/balance_widget.dart';
import 'package:mahfazty/features/home/widgets/expense_tile_widget.dart';
import 'package:mahfazty/features/home/widgets/myappbar.dart';
import 'package:mahfazty/features/home/widgets/percent_widget.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(10),
              const MyAppBar(),
              verticalSpace(10),
              const BalanceWidget(),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top Transactions',
                  style: FontsHelper.fonts16Boldwhite,
                ),
              ),
              verticalSpace(20),
              const PercentWidget(),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Latest Transactions',
                  style: FontsHelper.fonts16Boldwhite,
                ),
              ),
              SizedBox(
                height: 500.h,
                child: ListView(
                  children: const [
                    ExpenseTileWidget(),
                    ExpenseTileWidget(),
                    ExpenseTileWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
