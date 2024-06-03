import 'package:expense_tracker/Domain/landing/current_balance_model.dart';
import 'package:expense_tracker/Domain/landing/current_balance_repo.dart';
import 'package:expense_tracker/Domain/landing/summary_model.dart';
import 'package:expense_tracker/Domain/landing/summary_repo.dart';
import 'package:expense_tracker/data/model/account/account_model.dart';
import 'package:expense_tracker/data/model/account/account_repo.dart';
import 'package:expense_tracker/widgets/common/account_card.dart';
import 'package:flutter/material.dart';

class summaryaccount extends StatefulWidget {
  const summaryaccount({super.key});

  @override
  State<summaryaccount> createState() => _summaryaccountState();
}

class _summaryaccountState extends State<summaryaccount> {
  
  List<AccountModel> accounts = [];


  @override
  void initState() {
    loadAccounts();
  }

  Future<void> loadAccounts() async {
      final res = await currentblanceRepo().loadAccounts();
      setState(() {
        accounts = res;
      });
    }
    
  
  
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      // color: Colors.red,
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 8),
            child: Column(
              children: [
               Text("Current Balance",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              ],
            ),
          ),
          
          Container(
            
            color: Colors.white,
            height: 140,
            margin: EdgeInsets.only(bottom: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...accounts.map((val)=>
                accountcard(val.id,val.title,val.img,val.openingBalance)),
              ]
            ),
            )
            
          )
        ],
      ),
    );
  }
}

// Future<void> LoadData() async{
  //   summaryrepo().loadsummarydata(); //calling the class summary method(in repo if we use the class then call to this one else the below oone )
  // }

  // Future<void> LoadData() async{
  //  await loadsummarydata(); //calling the function  summary method
  // }