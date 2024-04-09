// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_widget.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ValueWidget on _ValueWidget, Store {
  late final _$priceAtom = Atom(name: '_ValueWidget.price', context: context);

  @override
  String get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(String value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  late final _$_ValueWidgetActionController =
      ActionController(name: '_ValueWidget', context: context);

  @override
  void updateNumber(String value) {
    final _$actionInfo = _$_ValueWidgetActionController.startAction(
        name: '_ValueWidget.updateNumber');
    try {
      return super.updateNumber(value);
    } finally {
      _$_ValueWidgetActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
price: ${price}
    ''';
  }
}
