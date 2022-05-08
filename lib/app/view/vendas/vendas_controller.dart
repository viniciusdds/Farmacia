import 'package:farmacia/app/repositories/vendas_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class VendasController extends GetxController  {

  Rx<DateTime> currentDate = DateTime.now().obs;
  Rx<DateTime> currentDate2 = DateTime.now().obs;
  String dataEscolhida = "";
  var locale = const Locale("pt", "BR");

  RxString resultado = "".obs;
  RxString resultadoMesAtual = "".obs;
  RxString resultadoPeriodo = "".obs;

  var result;

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
      result = await VendasRepository.recuperarVendaDia(DateFormat('yyyy/MM/dd').format(DateTime.now()));
      resultado.value = result;
  }

  //Método responsável por trazer o valor da venda do mes atual via API
  recupearVendaMes() async {
     result = await VendasRepository.recupearVendaMes(
         DateFormat('yyyy/MM/dd').format(DateTime(currentDate.value.year, currentDate.value.month, 1)),
         DateFormat('yyyy/MM/dd').format(DateTime(currentDate2.value.year, currentDate2.value.month + 1, 0))
     );
     resultadoMesAtual.value = result;
  }

  //Método responsável por trazer o valor da venda do periodo via API
  recupearVendaPeriodo() async {
     result = await VendasRepository.recupearVendaPeriodo(
         DateFormat('yyyy/MM/dd').format(currentDate.value),
         DateFormat('yyyy/MM/dd').format(currentDate2.value)
     );
     resultadoPeriodo.value = result;
  }

}