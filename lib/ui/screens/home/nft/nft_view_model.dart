import 'package:stacked/stacked.dart';

class NFTViewModel extends BaseViewModel {
  int _currentCategoryIndex = 0;

  void setCurrentCategory(int index) {
    _currentCategoryIndex = index;
    notifyListeners();
  }

  int get currentCategoryIndex => _currentCategoryIndex;
}