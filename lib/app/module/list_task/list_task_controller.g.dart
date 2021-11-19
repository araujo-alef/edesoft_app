// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListTaskController on _ListTaskController, Store {
  final _$listTaskAtom = Atom(name: '_ListTaskController.listTask');

  @override
  ObservableList<Note> get listTask {
    _$listTaskAtom.reportRead();
    return super.listTask;
  }

  @override
  set listTask(ObservableList<Note> value) {
    _$listTaskAtom.reportWrite(value, super.listTask, () {
      super.listTask = value;
    });
  }

  final _$getTaskListAsyncAction =
      AsyncAction('_ListTaskController.getTaskList');

  @override
  Future<void> getTaskList() {
    return _$getTaskListAsyncAction.run(() => super.getTaskList());
  }

  @override
  String toString() {
    return '''
listTask: ${listTask}
    ''';
  }
}
