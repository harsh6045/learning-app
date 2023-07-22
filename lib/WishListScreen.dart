import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 1) {
      // If Wishlist icon is selected (index 1), navigate to WishlistScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WishlistScreen()),
      );
    } else {
      // For other icons, update the selectedIndex
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Center(
        child: Text('This is the Wishlist Screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.white24
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
              backgroundColor: Colors.white24
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Order',
              backgroundColor: Colors.white24
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.white24
          ),
          BottomNavigationBarItem(
            icon: ClipOval(
              child: Image.asset(
                "assets/young.png",
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
        selectedItemColor: Colors.deepPurple,
        currentIndex: _selectedIndex, // Set the current selected index
        onTap: _onItemTapped,
      ),
    );
  }
}
