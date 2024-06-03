import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class transation extends StatelessWidget {
  const transation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction"),
      ),
      body:   Container(
      child: Column(
        children: [
          ListTile(
            title: Text('Family Dinner '),
            subtitle: Text('Get Date '),
            trailing: Text(
              'Nu. 12000',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green, // Use Colors.red if needed
              ),
            ),
          ),
        ],
      ),
    )

    );
  }
}