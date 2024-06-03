import 'dart:convert';

import 'package:expense_tracker/Domain/landing/current_balance_model.dart';
import 'package:expense_tracker/plugins/http.dart';

Future<SummaryCurrentBalanceModel> loadSummaryCurrentBalance() async{
  final res = await GetRequest('account/me');
  print(jsonDecode(res.body));
  final temp = jsonDecode(res.body)['data'];
  return SummaryCurrentBalanceModel(
    id: temp['id'],
    title: temp['title'],
    img: temp['img'],
    openingBalance: temp['openingBalance'],
    createdAt: temp['createdAt'],
    updatedAt: temp['updatedAt']

  );
}