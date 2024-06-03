import 'package:flutter/material.dart';

class addaccount extends StatelessWidget {
  const addaccount({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ['Account Type', 'Option 2', 'Option 3'];
    String? selectedValue = items[0];

    return Scaffold(
        appBar: AppBar(
          
          title: Text("Add Account"),
        ),
        body: Container(
          //margin: EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Container(
                  child: Container(
                child: CircleAvatar(
                  radius: 80, // Radius is half of the desired diameter
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2023/09/20/15/47/fish-8265114_1280.jpg"),
                ),
              )),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Colors.grey, // Set the border color here
                      width: 1.0, // Set the border width here
                    ),
                  ),
                ),
                height: 50,
                margin:
                    EdgeInsets.only(bottom: 16, left: 18, right: 18, top: 24),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Account Name',
                    filled: true,
                    // Adjust padding as needed
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors
                            .transparent, // Keep transparent to show container border
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors
                            .transparent, // Keep transparent to show container border
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 16, left: 18, right: 18),
                width: double.infinity,
                padding: EdgeInsets.only(left: 24),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 223, 223),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: selectedValue,
                    isExpanded: true, // Fill the container's width
                    items: items.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? value) {},
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Colors.grey, // Set the border color here
                      width: 1.0, // Set the border width here
                    ),
                  ),
                ),
                height: 50,
                margin: EdgeInsets.only(bottom: 16, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Opening Blance',
                    filled: true,
                    // Adjust padding as needed
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors
                            .transparent, // Keep transparent to show container border
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors
                            .transparent, // Keep transparent to show container border
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(18),
                width: double.infinity,
                height: 50,
                // Set the desired width here
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Set the background color to red
                  ),
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
