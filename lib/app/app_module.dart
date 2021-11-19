import 'package:flutter_modular/flutter_modular.dart';

import 'module/add_task/add_task_module.dart';
import 'module/list_task/list_task_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute("/listTask", module: ListTaskModule()),
        ModuleRoute("/addTask", module: AddTaskModule()),
      ];
}
