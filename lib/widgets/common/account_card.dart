import 'package:expense_tracker/Domain/landing/current_balance_model.dart';
import 'package:expense_tracker/Domain/landing/current_balance_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class accountcard extends StatelessWidget {
    
  num id;
  String title;
  String img;
  num openingBalance;
  accountcard(this.id,this.title, this.img,this.openingBalance);


    @override
  Widget build(BuildContext context) {
  
    return Container(
     padding: EdgeInsets.only(left: 8,right: 8),
                  height: 120,
                  width: 180,
                  // color: Color.fromARGB(255, 237, 241, 237),
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
        borderRadius: BorderRadius.circular(10), // Rounded corners
        border: Border.all(color: Colors.transparent), 
                    boxShadow: [
                      
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
          
        ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Expanded(
                          child: Container(
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(title.toString()),
                                 CircleAvatar(
                  backgroundImage: NetworkImage(img.toString()),
                  ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(openingBalance.toString()),
                              Text("Balance")
                            ],
                          ),
                        )
                    ],
                  ),
    );
  }
}