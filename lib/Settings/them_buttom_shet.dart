//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:ttttt/my_theme.dart';
// import '../my_theme.dart';
// import '../provider/list_provider.dart';
//
// class ThemeBottomSheet extends StatefulWidget{
//   @override
//   State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
// }
//
// class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     var provider = Provider.of<ListProvider>(context);
//     return Container(
//       margin: EdgeInsets.all(18),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(15),topRight: Radius.circular(15),)
//       ),
//       child: Column(
//         children: [
//           InkWell(
//             // dark
//             onTap: (){
//               provider.changeTheme(ThemeMode.dark);
//             },
//             child: provider.appTheme == ThemeMode.dark?
//             getSelectedItemWidget('Darkh')
//                 :getUnSelectedItemWidget('Darkh'),
//           ),
//           SizedBox(height: 20,),
//           InkWell(
//             // light
//             onTap: (){
//               provider.changeTheme(ThemeMode.light);
//             },
//             child: provider.appTheme == ThemeMode.light?
//             getSelectedItemWidget('Light')
//                 :getUnSelectedItemWidget('Light'),
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   Widget getSelectedItemWidget(String text){
//     var provider = Provider.of<ListProvider>(context);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(text,
//           style: TextStyle(
//               fontSize: 20,
//               color: provider.isDarkMode()? MyThemeData.white :
//               MyThemeData.black
//
//             //MyThemeData.black
//           )
//
//           //Theme.of(context).textTheme.headline4,
//
//         ),
//         Icon(Icons.check,color: MyThemeData.primaryBlue)
//       ],
//     );
//   }
//
//   Widget getUnSelectedItemWidget(String text){
//     var provider = Provider.of<ListProvider>(context);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(text,
//             style: TextStyle(
//                 fontSize: 20,
//                 color: provider.isDarkMode()? MyThemeData.white :
//                 MyThemeData.black
//
//                 //MyThemeData.black
//             )
//
//         )
//       ],
//     );
//   }
//
// }
//
