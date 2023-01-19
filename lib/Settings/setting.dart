import 'package:flutter/material.dart';
import 'languadg_buttom_shet.dart';
class Setting extends StatefulWidget {

  @override
  State<Setting> createState() => _settingState();
}
class _settingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Language',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              showLanguageButtonSheet();
            },
            child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('English',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Icon(Icons.arrow_drop_down_circle_outlined,),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageButtonSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return languageButtonSheet();
        }
    );
  }
}