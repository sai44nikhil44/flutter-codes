import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class EligilityProvider extends ChangeNotifier{
  String _eligilityMessage = "";
  late bool _isEligible;

  void checkEligibility(int age)
  {
    if(age >= 18)
    {
      _eligilityMessage = "You are eligible";
      _isEligible = true;
    }
    else{
      _eligilityMessage = "You are not eligible";
      _isEligible = false;
    }

    notifyListeners();
  }

  String get EligilityMessage => _eligilityMessage;
  bool get IsEligible => _isEligible;
}