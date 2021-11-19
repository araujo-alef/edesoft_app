import 'package:edesoft/app/data/repositories/sql_repository.dart';
import 'package:edesoft/app/models/task_model.dart';
import 'package:mobx/mobx.dart';

part 'add_task_controller.g.dart';

class AddTaskController = _AddTaskController with _$AddTaskController;

abstract class _AddTaskController with Store {
  @observable
  String? textInputDescription;

  @observable
  String? textInputDay;

  @observable
  String? textInputMonth;

  @action
  void onChangeDescription(String value) {
    textInputDescription = value;
  }

  @action
  void onChangeDay(String value) {
    textInputDay = value;
  }

  @action
  void onChangeMonth(String value) {
    textInputMonth = value;
  }

  Future<void> addedNewTask() async {
    final note = Note(
      description: textInputDescription!,
      day: textInputDay!,
      month: textInputMonth!,
    );
    await NotesDatabase.instance.create(note);
  }
}
