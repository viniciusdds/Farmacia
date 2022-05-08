import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProdutosProvider {

  static Future retornarVenda(String? dataInicio, String? dataFim, String? qtd) async{
    var url = Uri.parse("http://187.62.177.219:8181/FarmaciaService/api/vendasByPeriodo?"
        "inicio=${dataInicio}"
        "&fim=${dataFim}"
        "&qtd=${qtd}");
    var client = http.Client();

    try{
      var response = await client.get(url);
      var result = json.decode(response.body);
      return result;

    }catch(error){
      Get.snackbar("Erro ao Conectar API", "$error", duration: Duration(seconds: 3));
    }finally{
      client.close();
    }
  }

}