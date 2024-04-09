import 'package:mobx/mobx.dart';
part 'bottom_bar_navigation.g.dart';

class BottomNavigationStore = _BottomNavigationStore
    with _$BottomNavigationStore;

abstract class _BottomNavigationStore with Store {

  @observable
  int currentIndex = 0;

  @action
  void updateIndex(int index) {
    currentIndex = index;
  }
}
