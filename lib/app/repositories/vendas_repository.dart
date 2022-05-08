
import 'package:farmacia/app/providers/vendas_provider.dart';

class VendasRepository {

  static recuperarVendaDia(String? dataAtual) async {
    var result = await VendasProvider.recuperarVendaDia(dataAtual);
    return result;
  }

  static recupearVendaMes(String? dataInicio, String? dataFim) async {
    var result = await VendasProvider.recupearVendaMes(dataInicio, dataFim);
    return result;
  }

  static recupearVendaPeriodo(String? dataInicio, String? dataFim) async {
    var result = await VendasProvider.recupearVendaMes(dataInicio, dataFim);
    return result;
  }

}