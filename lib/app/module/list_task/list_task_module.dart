import 'package:flutter_modular/flutter_modular.dart';

import 'list_task_controller.dart';
import 'list_task_page.dart';

class ListTaskModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ListTaskController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const ListTaskPage())
  ];
}