import 'package:flutter/material.dart';
import 'package:mobile/components/bottom_nav_bar.dart';
import 'package:mobile/components/layouts/empty.dart';
import 'package:mobile/feats/main/screens/home_screen.dart';

enum MainPage {
  home,
  decoding,
  account,
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainPage page = MainPage.home;

  @override
  Widget build(BuildContext context) {
    return EmptyLayout(
      bottomNavBar: BottomNavBar(
        page: page,
        onTap: (newPage) => setState(() => page = newPage),
      ),
      child: [
        const HomeScreen(),
        const Text("decoding"),
        const Text("account"),
      ][page.index],
    );
  }
}