import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_task_controller.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends ModularState<AddTaskPage, AddTaskController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFF9F9F9),
        elevation: 0,
        title: Text(
          "Adicione uma Tarefa",
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold, color: const Color(0XFF1F1F1F)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty || value == "") {
                      return "Campo obrigatório";
                    } else if (value.length <= 2) {
                      return "Lembre-se de colocar uma descrição intuitiva para ter uma melhor experiência";
                    }
                    return null;
                  },
                  onChanged: controller.onChangeDescription,
                  decoration: const InputDecoration(
                      labelText: "Descrição", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty || value == "") {
                      return "Campo obrigatório";
                    } else if (int.parse(value) == 0 || int.parse(value) > 31) {
                      return "Lembre-se de digitar um dia válido";
                    }
                    return null;
                  },
                  onChanged: controller.onChangeDay,
                  decoration: const InputDecoration(
                      labelText: "Dia", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty || value == "") {
                      return "Campo obrigatório";
                    } else if (int.parse(value) == 0 || int.parse(value) > 12) {
                      return "Lembre-se de digitar um mês válido";
                    }
                    return null;
                  },
                  onChanged: controller.onChangeMonth,
                  decoration: const InputDecoration(
                    labelText: "Mês",
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final isValid = _formKey.currentState!.validate();

                      if (isValid) {
                        await controller.addedNewTask();
                        Modular.to.popAndPushNamed('/listTask');
                      }
                    },
                    icon: const Icon(Icons.check_rounded, size: 24.0),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Salvar",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w800, fontSize: 18.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
