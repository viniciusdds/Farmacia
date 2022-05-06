import 'package:farmacia/app/models/produtos.dart';

class Venda {

  int? id;
  String? status;
  int? quantidade;
  double? valorUnitario;
  String? tipoDesconto;
  double? desconto;
  double? valorTotal;
  double? valorDesconto;
  String? dataHora;
  Produto? embalagem;

  Venda({
    this.id,
    this.status,
    this.quantidade,
    this.valorUnitario,
    this.tipoDesconto,
    this.desconto,
    this.valorTotal,
    this.valorDesconto,
    this.dataHora,
    this.embalagem,
  });

  Venda.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    status = json['status']?.toString();
    quantidade = json['quantidade']?.toInt();
    valorUnitario = json['valorUnitario']?.toDouble();
    tipoDesconto = json['tipoDesconto']?.toString();
    desconto = json['desconto']?.toDouble();
    valorTotal = json['valorTotal']?.toDouble();
    valorDesconto = json['valorDesconto']?.toDouble();
    dataHora = json['dataHora']?.toString();
    embalagem = (json['embalagem'] != null)
        ? Produto.fromJson(json['embalagem'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['quantidade'] = quantidade;
    data['valorUnitario'] = valorUnitario;
    data['tipoDesconto'] = tipoDesconto;
    data['desconto'] = desconto;
    data['valorTotal'] = valorTotal;
    data['valorDesconto'] = valorDesconto;
    data['dataHora'] = dataHora;
    if (embalagem != null) {
      data['embalagem'] = embalagem!.toJson();
    }
    return data;
  }
}