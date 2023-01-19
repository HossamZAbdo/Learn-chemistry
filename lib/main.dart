import 'package:flutter/material.dart';
import 'package:learn_chemistry/provider/list_provider.dart';
import 'package:learn_chemistry/screens/login_screen.dart';
import 'package:learn_chemistry/screens/signup_screen.dart';
import 'package:provider/provider.dart';
import 'home/home_screen.dart';




void main() {
  runApp(ChangeNotifierProvider(
      create: (context) =>AppConfigProvider(),
      child: const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var provider =Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: LoginScreen.routName,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName : (context) => HomeScreen(),
        LoginScreen.routName:(context) => LoginScreen(),
        SignupScreen.routName:(context) => SignupScreen(),
      },
    );
  }
}
