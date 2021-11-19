import 'package:flutter_modular/flutter_modular.dart';

import 'add_task_controller.dart';
import 'add_task_page.dart';

class AddTaskModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AddTaskController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const AddTaskPage())
  ];
}