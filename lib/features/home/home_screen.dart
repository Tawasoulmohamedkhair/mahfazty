import 'package:flutter/material.dart';
import 'package:mahfazty/core/theming/mycolors.dart';
import 'package:mahfazty/features/home/widgets/home.dart';
import 'package:mahfazty/features/transaction/transaction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [Home(), TransactionScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.5],
              colors: [MyColors.redcolor, MyColors.navycolor]),
        ),
        child: screens[currentIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Theme(
          data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent),
          child: BottomNavigationBar(
              selectedIconTheme:
                  const IconThemeData(color: MyColors.yellowcolor),
              unselectedIconTheme: const IconThemeData(color: Colors.white),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.transparent,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 35,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.analytics,
                      size: 30,
                    ),
                    label: 'analytics')
              ]),
        ),
      ),
    );
  }
}
