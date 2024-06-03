
import 'package:expense_tracker/screen/account/account_screen.dart';
import 'package:expense_tracker/screen/account/add_account.dart';
import 'package:expense_tracker/screen/account/add_transaction.dart';
import 'package:expense_tracker/screen/landing/home_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = ['Home', 'Account', 'Add Transaction'];
  List<Widget> screens = [
    HomeScreen(),
    // addaccount(),
    
    AccountScreen(),
    addtransaction(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: Text(titles[_selectedIndex]),
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
          // BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: 'Add Accounts'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Accounts'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add Transaction'),
          //  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          // BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Accounts'),
          //  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        
        ],
      ),
    );
  }
}