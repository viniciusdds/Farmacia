import 'dart:convert';

import 'package:http/http.dart' as http;

class VendasProvider {

  static recuperarVendaDia(String? dataAtual) async {
    String url =
        "http://187.62.177.219:8181/FarmaciaService/api/totalByData?data=${dataAtual}";
    http.Response response;
    response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);
    double vendaDia = retorno["total"];

    return "${vendaDia}";
  }

  static recupearVendaMes(String? dataInicio, String? dataFim) async {
    String urlMesAtual =
        "http://187.62.177.219:8181/FarmaciaService/api/totalByPeriodo?"
        "inicio=${dataInicio}"
        "&fim=${dataFim}";
    http.Response response;
    response = await http.get(Uri.parse(urlMesAtual));
    Map<String, dynamic> retorno = json.decode(response.body);
    double vendaMes = retorno["total"];

    return "${vendaMes}";
  }

  static recupearVendaPeriodo(String? dataInicio, String? dataFim) async {
    String urlPeriodo =
        "http://187.62.177.219:8181/FarmaciaService/api/totalByPeriodo?"
        "inicio=${dataInicio}"
        "&fim=${dataFim}";
    http.Response response;
    response = await http.get(Uri.parse(urlPeriodo));
    Map<String, dynamic> retorno = json.decode(response.body);
    double vendaPeriodo = retorno["total"];

     return "${vendaPeriodo}";
  }

}