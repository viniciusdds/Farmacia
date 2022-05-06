import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  List<String> itensMenu = ["Configurações", "Deslogar"];
  late TabController tabController;

  escolhaMenuItem(String itemEscolhido) {
    //print("Item escolhido" + itemEscolhido);
    switch (itemEscolhido) {
      case ("Configurações"):
        print("Configurações");
        break;
      case ("Deslogar"):
      //_deslogarUsuario();
        break;
    }
  }

}