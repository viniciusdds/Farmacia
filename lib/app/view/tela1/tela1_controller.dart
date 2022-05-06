import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class Tela1Controller extends GetxController  {

  Rx<DateTime> currentDate = DateTime.now().obs;
  Rx<DateTime> currentDate2 = DateTime.now().obs;
  String dataEscolhida = "";
  var locale = const Locale("pt", "BR");

  RxString resultado = "".obs;
  RxString resultadoMesAtual = "".obs;
  RxString resultadoPeriodo = "".obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        locale: locale,
        initialDatePickerMode: DatePickerMode.day,
        initialEntryMode: DatePickerEntryMode.input,
        helpText: 'Selecione a Data Inicial', // Can be used as title
        initialDate: currentDate.value,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate.value){
      currentDate.value = pickedDate;
    }
  }

  Future<void> selectDate2(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        locale: locale,
        initialDatePickerMode: DatePickerMode.day,
        initialEntryMode: DatePickerEntryMode.input,
        helpText: 'Selecione a Data Inicial', // Can be used as title
        initialDate: currentDate2.value,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate2.value){
      currentDate2.value = pickedDate;
    }

  }



  //Método responsável por trazer o valor da venda do dia via API
  recuperarVendaDia() async {
    print(DateFormat('yyyy/MM/dd').format(DateTime.now()));
    String url =
        "http://187.62.177.219:8181/FarmaciaService/api/totalByData?data=2022/05/05";
    http.Response response;
    response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);
    double vendaDia = retorno["total"];

      print(vendaDia);
      resultado.value = "${vendaDia}";

  }

  //Método responsável por trazer o valor da venda do mes atual via API
  recupearVendaMes() async {
    String urlMesAtual =
        "http://187.62.177.219:8181/FarmaciaService/api/totalByPeriodo?inicio=${DateFormat('yyyy/MM/dd').format(DateTime(currentDate.value.year, currentDate.value.month, 1))}&fim=${DateFormat('yyyy/MM/dd').format(DateTime(currentDate.value.year, currentDate.value.month + 1, 0))}";
    http.Response response;
    response = await http.get(Uri.parse(urlMesAtual));
    Map<String, dynamic> retorno = json.decode(response.body);
    double vendaMes = retorno["total"];

      resultadoMesAtual.value = "${vendaMes}";

  }

  //Método responsável por trazer o valor da venda do periodo via API
  recupearVendaPeriodo() async {
    String urlPeriodo =
        "http://187.62.177.219:8181/FarmaciaService/api/totalByPeriodo?inicio=${DateFormat('yyyy/MM/dd').format(currentDate.value)}&fim=${DateFormat('yyyy/MM/dd').format(currentDate2.value)}";
    http.Response response;
    response = await http.get(Uri.parse(urlPeriodo));
    Map<String, dynamic> retorno = json.decode(response.body);
    double vendaPeriodo = retorno["total"];

    resultadoPeriodo.value = "${vendaPeriodo}";

  }

}