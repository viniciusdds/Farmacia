import 'package:farmacia/app/models/pedidos.dart';
import 'package:farmacia/app/models/vendas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Tela2Controller extends GetxController{

  late List<Venda> emps;
  DateTime currentDate = DateTime.now();
  DateTime currentDate2 = DateTime.now();
  String dataEscolhida = "";
  var locale = const Locale("pt", "BR");

  final String _urlBase2 =
      "http://187.62.177.219:8181/FarmaciaService/api/vendasByPeriodo?inicio=2022/04/18&fim=2022/04/18&qtd=10";

  List<dynamic> listaVenda = [];
  List<Pedido> listaEmbalagem = [];
  retornarVenda() async {
    var url = Uri.parse(_urlBase2);
   // final http.Response response = await http.get(url);
    //setState(() {
      //if (response.statusCode == 200) {
        // List<dynamic> lista = jsonDecode(response.body);
        // for (var i = 0; i < lista.length; i++) {
        //   listaVenda = lista[i]['itens'];
        //   for (var j = 0; j < listaVenda.length; j++) {
        //     print(lista[i]);
        //     listaEmbalagem.add(
        //       Pedido(
        //         id: lista[i]['id'].toString(),
        //         id_usuario: lista[i]['usuario']['id'].toString(),
        //         apelido: lista[i]['usuario']['apelido'],
        //         id_itens: lista[i]['itens'][j]['id_itens'].toString(),
        //         status: lista[i]['itens'][j]['status'],
        //         quantidade: lista[i]['itens'][j]['quantidade'].toString(),
        //         valorUnitario: lista[i]['itens'][j]['valorUnitario'].toString(),
        //         tipoDesconto: lista[i]['itens'][j]['tipoDesconto'],
        //         desconto: lista[i]['itens'][j]['desconto'].toString(),
        //         valorTotal: lista[i]['itens'][j]['valorTotal'].toString(),
        //         valorDesconto: lista[i]['itens'][j]['valorDesconto'].toString(),
        //         dataHora: lista[i]['itens'][j]['dataHora'].toString(),
        //         id_embalagem: lista[i]['itens'][j]['embalagem']['id_embalagem']
        //             .toString(),
        //         descricao: lista[i]['itens'][j]['embalagem']['descricao'],
        //         precoVenda:
        //         lista[i]['itens'][j]['embalagem']['precoVenda'].toString(),
        //       ),
        //     );
        //     //print(Pedido[i].apelido);
        //   }
        // }
     // }
    //});
  }

}