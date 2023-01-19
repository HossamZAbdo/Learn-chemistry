import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/list_provider.dart';

class languageButtonSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(18),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child:Column(
        children: [
          SizedBox(height: 30,),
          InkWell(
            onTap: (){
              provider.changeLanguage('en');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('English',
                    style:Theme.of(context).textTheme.headline5
                ),
                Icon(Icons.check)
              ],
            ),
          ),
          SizedBox(height: 50,),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Arabic',
                    style:Theme.of(context).textTheme.headline5
                ),
                Icon(Icons.check)
              ],
            ),
          ),
        ],
      ) ,
    );
  }
}