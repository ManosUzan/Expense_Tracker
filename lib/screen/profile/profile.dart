import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: 50, // Radius is half of the desired diameter
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/09/20/15/47/fish-8265114_1280.jpg"),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center children horizontally
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center children vertically
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sonam",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Software Developer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.face),
                        SizedBox(
                            width:
                                32), // Add horizontal space between icon and text
                        Text("Get Date"),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_city),
                        SizedBox(
                            width:
                                16), // Add horizontal space between icon and text
                        Text("Get Location"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Total Balance",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text("Get Total balance "),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Total Expense",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Get Total balance"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
