import 'package:expense_tracker/firebase_options.dart';
import 'package:expense_tracker/plugins/firebase_api.dart';
import 'package:expense_tracker/plugins/local_notification.dart';
import 'package:expense_tracker/screen/account/add_account.dart';
import 'package:expense_tracker/screen/account/add_transaction.dart';
import 'package:expense_tracker/screen/landing/home_screen.dart';
import 'package:expense_tracker/screen/landing/temp_screen.dart';
import 'package:expense_tracker/screen/profile/profile.dart';
import 'package:expense_tracker/screen/splash_screen.dart';
import 'package:expense_tracker/screen/transaction/transaction.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotification.initialize();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: addtransaction(),
      home:SplashScreen(),
      // home: HomeScreen()
      //  home:  addtransaction (),
      //  home: addaccount(),
      // home: transation(),
      // home: profile(),
      


      // home:TempScreen(),
    );
  }
}