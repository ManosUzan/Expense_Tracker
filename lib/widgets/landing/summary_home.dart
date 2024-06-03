import 'package:expense_tracker/Domain/landing/summary_model.dart';
import 'package:expense_tracker/Domain/landing/summary_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class summaryhome extends StatefulWidget {
  const summaryhome({super.key});

  @override
  State<summaryhome> createState() => _summaryhomeState();
}

class _summaryhomeState extends State<summaryhome> {
  SummaryModel summary = SummaryModel();
  @override
  void initState() {
    loadData();
  }
  // Future<void> LoadData() async{
  //   summaryrepo().loadsummarydata(); //calling the class summary method(in repo if we use the class then call to this one else the below oone )
  // }

  // Future<void> LoadData() async{
  //  await loadsummarydata(); //calling the function  summary method
  // }
  Future<void> loadData() async {
    SummaryModel res = await loadSummaryData();
    setState(() {
      summary = res;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 150,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 200,
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Current Balance",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Nu.' + summary.openingBalance.toString(),
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 8),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color:
                            Colors.white, // Background color of the container
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Icon(Icons.arrow_downward),
                                      ),
                                      Center(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Total Balance"),
                                              Text("Nu." +
                                                  summary.expenses.toString()),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Icon(Icons.arrow_upward),
                                      ),
                                      Center(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Total Income"),
                                              Text("Nu." +
                                                  summary.income.toString())
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
