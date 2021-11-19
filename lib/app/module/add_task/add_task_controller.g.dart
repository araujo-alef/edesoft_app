// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddTaskController on _AddTaskController, Store {
  final _$textInputDescriptionAtom =
      Atom(name: '_AddTaskController.textInputDescription');

  @override
  String? get textInputDescription {
    _$textInputDescriptionAtom.reportRead();
    return super.textInputDescription;
  }

  @override
  set textInputDescription(String? value) {
    _$textInputDescriptionAtom.reportWrite(value, super.textInputDescription,
        () {
      super.textInputDescription = value;
    });
  }

  final _$textInputDayAtom = Atom(name: '_AddTaskController.textInputDay');

  @override
  String? get textInputDay {
    _$textInputDayAtom.reportRead();
    return super.textInputDay;
  }

  @override
  set textInputDay(String? value) {
    _$textInputDayAtom.reportWrite(value, super.textInputDay, () {
      super.textInputDay = value;
    });
  }

  final _$textInputMonthAtom = Atom(name: '_AddTaskController.textInputMonth');

  @override
  String? get textInputMonth {
    _$textInputMonthAtom.reportRead();
    return super.textInputMonth;
  }

  @override
  set textInputMonth(String? value) {
    _$textInputMonthAtom.reportWrite(value, super.textInputMonth, () {
      super.textInputMonth = value;
    });
  }

  final _$_AddTaskControllerActionController =
      ActionController(name: '_AddTaskController');

  @override
  void onChangeDescription(String value) {
    final _$actionInfo = _$_AddTaskControllerActionController.startAction(
        name: '_AddTaskController.onChangeDescription');
    try {
      return super.onChangeDescription(value);
    } finally {
      _$_AddTaskControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeDay(String value) {
    final _$actionInfo = _$_AddTaskControllerActionController.startAction(
        name: '_AddTaskController.onChangeDay');
    try {
      return super.onChangeDay(value);
    } finally {
      _$_AddTaskControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeMonth(String value) {
    final _$actionInfo = _$_AddTaskControllerActionController.startAction(
        name: '_AddTaskController.onChangeMonth');
    try {
      return super.onChangeMonth(value);
    } finally {
      _$_AddTaskControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
textInputDescription: ${textInputDescription},
textInputDay: ${textInputDay},
textInputMonth: ${textInputMonth}
    ''';
  }
}
