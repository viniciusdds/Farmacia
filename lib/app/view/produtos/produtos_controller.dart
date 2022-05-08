import 'package:farmacia/app/models/pedidos.dart';
import 'package:farmacia/app/models/vendas.dart';
import 'package:farmacia/app/repositories/produtos_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProdutosController extends GetxController{

  late List<Venda> emps;
  // DateTime currentDate = DateTime.now();
  // DateTime currentDate2 = DateTime.now();
  DateTime currentDate = DateTime(2022, 05, 07);
  DateTime currentDate2 = DateTime(2022, 05, 07);
  String dataEscolhida = "";
  var locale = const Locale("pt", "BR");
  RxBool loading = false.obs;
  RxList<Pedido> pedidos = <Pedido>[].obs;
  String qtd = "10";

  Future retornarVenda() async {

    loading.value = true;

    pedidos.addAll(await ProdutosRepository.retornarVenda(
        DateFormat('yyyy/MM/dd').format(currentDate),
        DateFormat('yyyy/MM/dd').format(currentDate2),
        qtd)
    );

    loading.value = false;
  }

}