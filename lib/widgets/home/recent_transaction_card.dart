import 'package:flutter/material.dart';

class recenttransactioncard extends StatelessWidget {
  const recenttransactioncard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      

     margin: const EdgeInsets.only(bottom:8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Icon(Icons.face)
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text("Family Dinner"),
                Text("get Date"),
              ],
            ),
          ),
          Container(
            
            child:Column(
              children: [Text("Nu.2000")],
            )
          )
          
        ],
      ),
    );
  }
}
