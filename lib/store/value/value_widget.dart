import 'package:mobx/mobx.dart';
part 'value_widget.g.dart';

class ValueWidget = _ValueWidget
    with _$ValueWidget;

abstract class _ValueWidget with Store {

  @observable
  String price = '0.0';

  @action
  void updateNumber(String value) {
    price = value;
  }
}
