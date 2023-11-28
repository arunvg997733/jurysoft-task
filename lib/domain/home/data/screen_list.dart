import 'package:flutter/widgets.dart';
import 'package:jurysofttask/presentation/cart_screen/cart_screen.dart';
import 'package:jurysofttask/presentation/home_screen/home_screen.dart';
import 'package:jurysofttask/presentation/profile_screen/profile_screen.dart';

class MainScreenData {
  static List<Widget> mainScreenPages = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];
}
