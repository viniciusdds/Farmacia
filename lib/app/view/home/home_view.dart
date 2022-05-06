import 'package:farmacia/app/view/home/home_controller.dart';
import 'package:farmacia/app/view/tela1/tela1_view.dart';
import 'package:farmacia/app/view/tela2/tela2_view.dart';
import 'package:farmacia/app/view/tela3/tela3_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  HomeController homeController = Get.find();

  @override
  void initState() {
    super.initState();
    homeController.tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    homeController.tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drogarias Poupaqui"),
        bottom: TabBar(
          controller: homeController.tabController,
          tabs: const [
            Tab(
              text: "Vendas",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Vendas Itens",
              icon: Icon(Icons.airplay_outlined),
            ),
            Tab(
              text: "Orçamentos",
              icon: Icon(Icons.add_chart),
            ),
          ],
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: homeController.escolhaMenuItem,
            itemBuilder: (context) {
              return homeController.itensMenu.map((String item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
          )
        ],
        backgroundColor: Colors.red,
      ),
      body: TabBarView(
        controller: homeController.tabController,
        children:  [Tela1View(), Tela2View(), Tela3View()],
      ),
    );
  }
}