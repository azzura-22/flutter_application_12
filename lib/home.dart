import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();

}

class _homepageState extends State<homepage> {

  int _selectedIndex = 0;

  final List <Widget> pages = [
    Center(child: Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ],
          )
        ],
      ),
    )),
    Center(child: Text('ini halaman Bookmark'),),
    Center(child: Text('ini halaman Cart'),),
    Center(child: Text('ini halaman profil'),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
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