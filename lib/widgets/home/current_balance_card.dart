import 'package:flutter/material.dart';

class currentbalancecard extends StatelessWidget {
  const currentbalancecard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 90,
      // color: const Color.fromARGB(255, 202, 197, 197),
        margin: const EdgeInsets.only(right:16),
        decoration: BoxDecoration(
           color: const Color.fromARGB(255, 228, 227, 227),
                border: Border.all(
                  color: Color.fromARGB(255, 20, 19, 19), // Border color
                  width: 0.5,
        ),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NIBL"),
            Text("Nu. 43,000"),
            Text("Nu.2000 this month")
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Icon(Icons.face)
          ],
        ),
      )
       ],
      ),
    );
  }
}

