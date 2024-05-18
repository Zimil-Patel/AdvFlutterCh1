import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreenProvider extends ChangeNotifier {
  int _introStackIndex = 0;
  bool isIntroDisplayed = false;
  final PageController pageController = PageController();

  int getIndex() => _introStackIndex;

  void incrementIndex() {
    _introStackIndex++;
    pageController.jumpToPage(_introStackIndex);
    notifyListeners();
  }

  void setIntroStackIndex(int value) {
    _introStackIndex = value;
    notifyListeners();
  }

  void skipIntro(int index) {
    _introStackIndex = index;
    pageController.jumpToPage(_introStackIndex);
    notifyListeners();
  }

  //SET METHOD
  Future<void> setPreferenceToTrue() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isIntroDisplayed', true);
  }

  //GET METHOD
  Future<void> getPreferenceValue() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    isIntroDisplayed = preferences.getBool('isIntroDisplayed') ?? false;
    notifyListeners();
  }

  IntroScreenProvider() {
    getPreferenceValue();
  }
}
