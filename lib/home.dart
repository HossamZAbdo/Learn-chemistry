import 'package:flutter/material.dart';

class Home extends StatelessWidget {
 // const Home({Key? key}) : super(key: key);
  static const String routName='home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("chemistry"),),
      body: Container(color: Colors.deepOrangeAccent,),
    );
  }
}
