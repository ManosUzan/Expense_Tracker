import 'package:expense_tracker/base/style/text_styles.dart';
import 'package:expense_tracker/plugins/local_shared_preferences.dart';
import 'package:expense_tracker/screen/splash_screen.dart';
import 'package:expense_tracker/widgets/home/current_balance.dart';
import 'package:expense_tracker/widgets/home/recent_transaction.dart';
import 'package:expense_tracker/widgets/landing/summary_acconts.dart';
import 'package:expense_tracker/widgets/landing/summary_home.dart';
import 'package:expense_tracker/widgets/landing/summary_transaction.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
 child: Column(
  children: [
      summaryhome(),
      summaryaccount(),
      SummaryTransactions()
   
  ],
 ),
    );
    // return Container(
    //   height: MediaQuery.of(context).size.height,
    //   child: Stack(
    //     children: [
    //       Container(
    //         padding: EdgeInsets.all(16),
    //         height: 100,
    //         // color: Colors.red,
    //         decoration: BoxDecoration(
    //           color: Colors.red,
    //           border: Border.all(
    //             color: Color.fromARGB(255, 237, 32, 10), // Border color
    //             width: 1, // Border width
    //           ),
    //           boxShadow: [
    //             BoxShadow(
    //               color:
    //                   Colors.grey.withOpacity(0.5), // Shadow color with opacity
    //               spreadRadius: 5, // Spread radius
    //               blurRadius: 7, // Blur radius
    //               offset: Offset(0, 3), // Offset in x and y directions
    //             ),
    //           ],
    //         ),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Center(
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Container(
    //                     padding: EdgeInsets.only(left: 18),
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text("Current Balance"),
    //                         Text("Get Current Balaance"),
    //                       ],
    //                     ),
    //                   ),
    //                   Container(
    //                     padding: EdgeInsets.only(right: 18),
    //                     child: Column(
    //                       children: [
    //                         Text("Targeted Budget"),
    //                         Text("Get Target Budget")
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         margin: EdgeInsets.only(right: 32, left: 32, top: 84),
    //         height: 90,
    //         padding: EdgeInsets.all(16),
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //             color: Colors.white,
    //             border: Border.all(
    //               color: Color.fromARGB(255, 20, 19, 19), // Border color
    //               width: 1,
    //             ),
    //             // borderRadius: BorderRadius.circular(16),
    //             boxShadow: [
    //               BoxShadow(
    //                   color: Colors.black12,
    //                   blurRadius: 8,
    //                   spreadRadius: 4,
    //                   blurStyle: BlurStyle.normal)
    //             ]),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [Text("Total Income"), Text("Get Total Income")],
    //               ),
    //             ),
    //             Container(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text("Total Expense"),
    //                   Text("Get Total Expense")
    //                 ],
    //               ),
    //             ),
                
    //           ],
    //         ),
    //       ),
    //       Container(
    //         margin: EdgeInsets.only(bottom:64),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             currentbalance(),
              
    //           ],
    //         ),
    //       ),
    //       Container(
    //         margin: EdgeInsets.only(top: 185),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             recenttransaction(),
    //           ],
    //         ),
    //       )
    //     ],
        
    //   ),
    // );
    
  }
}