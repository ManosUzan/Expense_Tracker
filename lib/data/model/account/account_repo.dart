import 'dart:convert';

import 'package:expense_tracker/data/model/account/account_model.dart';
import 'package:expense_tracker/plugins/http.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class AccountRepo {
  Future loadAccounts() async{
    final res = await GetRequest('account/me');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];
    for(final acc in jsonDecode(res.body)['data']){                //class for account
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }
}
class currentblanceRepo {
  Future loadAccounts() async{
   final res = await GetRequest('account/me');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];                        //class for current balance
    for(final acc in jsonDecode(res.body)['data']){
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }
  
}
class AccountService {
  Future loadAccounts() async{
   final res = await GetRequest('account/me');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];                        
    for(final acc in jsonDecode(res.body)['data']){
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }
  

 Future addAccounts(AccountModel account) async{
   final res = await PostRequest('account',{
    
    'title': account.title,
    'openingBalance':account.openingBalance,
   });
    
  }
}
  

