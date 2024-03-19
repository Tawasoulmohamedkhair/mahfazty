import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
>>>>>>> 83718d3f2b0d581b774cefc326818b7b627a5c37
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
