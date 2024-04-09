// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_bar_navigation.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BottomNavigationStore on _BottomNavigationStore, Store {
  late final _$currentIndexAtom =
      Atom(name: '_BottomNavigationStore.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$_BottomNavigationStoreActionController =
      ActionController(name: '_BottomNavigationStore', context: context);

  @override
  void updateIndex(int index) {
    final _$actionInfo = _$_BottomNavigationStoreActionController.startAction(
        name: '_BottomNavigationStore.updateIndex');
    try {
      return super.updateIndex(index);
    } finally {
      _$_BottomNavigationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
