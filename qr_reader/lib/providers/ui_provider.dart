import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedBottomOption = 0;

  int get selectedBottomOption => _selectedBottomOption;

  set selectedBottomOption(int index) {
    _selectedBottomOption = index;
    notifyListeners(); 
  }
}