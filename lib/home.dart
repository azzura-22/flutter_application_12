import 'package:flutter/material.dart';
import 'package:flutter_application_12/profile.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();

}

class _homepageState extends State<homepage> {

  int _selectedIndex = 0;

  final List <Widget> pages = [
    Center(child: Padding(padding: EdgeInsets.all(11),)),
    Center(child: Text('ini halaman Bookmark'),),
    Center(child: Text('ini halaman Cart'),),
    Center(child:
    Profil()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iuran'),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined),selectedIcon: Icon(Icons.home_outlined), label: 'Beranda'),
          NavigationDestination(icon: Icon(Icons.bookmark_outline),selectedIcon: Icon(Icons.bookmark), label: 'Bookmark'),
          NavigationDestination(icon: Icon(Icons.shopping_cart_outlined),selectedIcon: Icon(Icons.shopping_cart), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.person_outline),selectedIcon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}