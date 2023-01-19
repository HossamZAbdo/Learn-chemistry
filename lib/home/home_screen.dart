import 'package:flutter/material.dart';
import 'package:learn_chemistry/Settings/setting.dart';
import 'package:learn_chemistry/bottom_navigationBar_Item/1.dart';
import 'package:learn_chemistry/bottom_navigationBar_Item/2.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(
              'learn_chemistry',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          drawer: Drawer(
              child: Column(
                children: [
                  const UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: Text('O',style: TextStyle(color: Colors.white),),
                    ),
                    accountName:  Text('Osama Emara'),
                    accountEmail: Text('osama@gmail.com'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout_outlined),
                    title: const Text('Home Page'),
                    onTap: () {} ,
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Log out'),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              )
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.cyan),
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
              ],
            ),
          ),
          body:taps[currentIndex],
          //Setting()
        )
      ],
    );
  }
  List<Widget> taps = [
    one(),Two(),Setting()
  ];
}
