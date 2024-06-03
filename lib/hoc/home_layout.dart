
import 'package:expense_tracker/screen/account/account_screen.dart';
import 'package:expense_tracker/screen/landing/home_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = ['Home', 'Account'];
  List<Widget> screens = [
    HomeScreen(),
    AccountScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo on the left side
              Image.asset(
                'assets/images/logo.png',
                height: 40, // Adjust the height according to your logo size
              ),
              // Search bar and icons on the right side
              Row(
                children: [
                  // Search bar
                  // Text(titles[_selectedIndex]),
                  Container(
                    width: 24, // Adjust the width according to your design
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/face.jpeg'),
                    radius: 20, // Adjust the radius according to your design
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.white, // Adjust the background color as needed
      //   ),
      // appBar: AppBar(
      //   title: Text(titles[_selectedIndex]),
      ),
      body: SingleChildScrollView(
        child: screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val){
          setState(() {
            _selectedIndex = val;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Accounts'),
           BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Accounts'),
           BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        
        ],
      ),
    );
  }
}