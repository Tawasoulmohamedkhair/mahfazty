import 'package:flutter/material.dart';
import 'package:mahfazty/features/home/widgets/mychart.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child: MyChart()),
    );
  }
}
