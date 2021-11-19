import 'package:edesoft/app/data/repositories/sql_repository.dart';
import 'package:edesoft/app/models/task_model.dart';
import 'package:mobx/mobx.dart';

part 'list_task_controller.g.dart';

class ListTaskController = _ListTaskController with _$ListTaskController;

abstract class _ListTaskController with Store {
  final repository = NotesDatabase.instance;

  @observable
  ObservableList<Note> listTask = ObservableList();

  @action
  Future<void> getTaskList() async {
    List<Note> list = await repository.readAllNotes();
    listTask.clear();
    listTask.addAll(list);
  }
}
