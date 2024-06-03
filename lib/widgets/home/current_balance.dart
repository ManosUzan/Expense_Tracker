import 'package:expense_tracker/widgets/home/current_balance_card.dart';
import 'package:flutter/material.dart';

class currentbalance extends StatefulWidget {
  const currentbalance({super.key});

  @override
  State<currentbalance> createState() => _currentbalanceState();
}

class _currentbalanceState extends State<currentbalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      width: double.infinity,
      // margin: const EdgeInsets.only(top: 16),
      // padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Current Balance',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(top:8),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                children: [
                  currentbalancecard(),
                  currentbalancecard(),
                  currentbalancecard(),
                   currentbalancecard(),
                  currentbalancecard(),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

