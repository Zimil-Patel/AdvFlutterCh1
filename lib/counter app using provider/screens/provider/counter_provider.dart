import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterProvider extends ChangeNotifier{

  int _count = 0;


  int getCount() => _count;

  Future<void> increaseCountPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _count++;
    preferences.setInt('count', _count);
    print(preferences.getInt('count')!);
    notifyListeners();
  }

  Future<void> getCountPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if(preferences.containsKey('count')){
      _count = preferences.getInt('count')!;
    } else {
      preferences.setInt('count', 0);
      _count = 0;
    }
    notifyListeners();
  }

  CounterProvider(){
    getCountPreference();
  }
}