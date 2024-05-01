import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_list.dart';

class ListScrollView extends StatelessWidget {
  const ListScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    void navigateTo(Widget widget){
      Navigator.push(context, MaterialPageRoute(builder: (context) => widget,));
    }

    return Center(
      child: ListWheelScrollView(
        itemExtent: 120,

        children: List.generate(appList.length, (index) => CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            navigateTo(appList[index].widget);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(appList[index].title),
          ),
        )),
      ),
    );
  }

}