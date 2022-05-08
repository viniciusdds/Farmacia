import 'package:farmacia/app/models/pedidos.dart';
import 'package:farmacia/app/providers/produtos_provider.dart';

class ProdutosRepository {

  static Future<List<Pedido>> retornarVenda(String dataInicio, String dataFim, String qtd) async {

    List<Pedido> dados = [];

    var result = await ProdutosProvider.retornarVenda(dataInicio, dataFim, qtd);

    result.forEach((m) => dados.add(Pedido.fromJson(m)));

    return dados;
  }

}