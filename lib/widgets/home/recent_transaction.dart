import 'package:expense_tracker/widgets/home/recent_transaction_card.dart';
import 'package:flutter/material.dart';

class recenttransaction extends StatelessWidget {
  const recenttransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 121,
      width: double.infinity,
      // margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent Transaction',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(top:8),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                children: [
                 recenttransactioncard(),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

