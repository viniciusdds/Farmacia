import 'package:farmacia/app/view/tela1/tela1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Tela1View extends StatelessWidget {

  Tela1Controller tela1controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFdde0e3),
      body: SingleChildScrollView(
        child: Container(
          //padding: const EdgeInsets.all(20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                //elevation: 8, // Change this
                shadowColor: Colors.black,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.calendar_today,
                          color: Colors.black, size: 20),
                      title: Text(
                        'Venda do Dia',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    Obx(() => Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                         "R\$ " + tela1controller.resultado.value,
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                //elevation: 8, // Change this
                shadowColor: Colors.black,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.calendar_today_outlined,
                          color: Colors.black, size: 20),
                      title: Text(
                        'Venda Mês',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      //subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    Obx(() => Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                           "R\$ " + tela1controller.resultadoMesAtual.value,
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 8, // Change this
                shadowColor: Colors.black,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.calendar_today_outlined,
                          color: Colors.black, size: 15),
                      title: Text(
                        'Venda periodo',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      //subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    Obx(() => Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                           "R\$ " + tela1controller.resultadoPeriodo.value,
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: IconButton(
                      iconSize: 30,
                      icon: const Icon(Icons.calendar_today_outlined),
                      tooltip: 'Tap to open date picker',
                      onPressed: () {
                       tela1controller.selectDate(context);
                      },
                    ),
                  ),
                  Obx(() =>Text(
                      DateFormat("'Data Inicial :' dd/MM/yyyy").format(tela1controller.currentDate.value),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: IconButton(
                      iconSize: 30,
                      icon: const Icon(Icons.calendar_today_outlined),
                      tooltip: 'Tap to open date picker',
                      onPressed: () {
                        tela1controller.selectDate2(context);
                      },
                    ),
                  ),
                  Obx(() => Text(
                      DateFormat("'Data Inicial :' dd/MM/yyyy").format(tela1controller.currentDate2.value),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 0),
                  child: ElevatedButton(
                      child: const Text(
                        "Atualizar Venda",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(0, 45),
                      ),
                      onPressed: () {
                         tela1controller.recuperarVendaDia();
                         tela1controller.recupearVendaMes();
                         tela1controller.recupearVendaPeriodo();
                      }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
