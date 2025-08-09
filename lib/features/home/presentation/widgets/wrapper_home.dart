import 'package:flutter/material.dart';
import 'package:delivery_food/features/home/presentation/views/home_view.dart';
import 'package:delivery_food/features/card/presentation/views/card_view.dart';
import 'package:delivery_food/features/profile/presentation/views/profile_view.dart';

class WrapperHome extends StatefulWidget {
  const WrapperHome({super.key});

  @override
  State<WrapperHome> createState() => _WrapperHomeState();
}

class _WrapperHomeState extends State<WrapperHome> {
  int _currentIndex = 0;

  final List<Widget> _pages = [MyHomePage(), CardView(), ProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        elevation: 10,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Items',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (indix) {
          setState(() {
            _currentIndex = indix;
          });
        },
        selectedItemColor: Colors.black,
        // unselectedItemColor: Colors.redAccent,
      ),
    );
  }
}
