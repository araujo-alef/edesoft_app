import 'package:edesoft/app/module/list_task/list_task_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTaskPage extends StatefulWidget {
  const ListTaskPage({Key? key}) : super(key: key);

  @override
  _ListTaskPageState createState() => _ListTaskPageState();
}

class _ListTaskPageState
    extends ModularState<ListTaskPage, ListTaskController> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.getTaskList();

    return Scaffold(
      backgroundColor: const Color(0XFFF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0XFFF9F9F9),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        elevation: 0,
        title: Text(
          "Lista de Tarefas",
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold, color: const Color(0XFF1F1F1F)),
        ),
        centerTitle: true,
      ),
      body: Observer(
        builder: (_) {
          return controller.listTask.isEmpty
              ? Center(
                  child: Text(
                    "Aqui ficaram suas próximas tarefas",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 18.0),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: ListView.builder(
                    itemCount: controller.listTask.length,
                    itemBuilder: (context, i) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2.0),
                            boxShadow: const [
                              BoxShadow(blurRadius: 4.0, color: Colors.black45)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 14.0, bottom: 14.0, left: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.listTask[i].description.toString(),
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0, right: 12.0),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        right: BorderSide(
                                            width: 2.0,
                                            color: Colors.blueAccent))),
                                child: Text(
                                  "${controller.listTask[i].day.toString()} / ${controller.listTask[i].month}",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Modular.to.pushNamed('/addTask'),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
