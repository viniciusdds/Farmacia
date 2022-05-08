import 'package:farmacia/app/models/embalagem.dart';

class Itens {
  int? id;
  String? status;
  double? quantidade;
  double? valorUnitario;
  String? tipoDesconto;
  double? desconto;
  double? valorTotal;
  double? valorDesconto;
  String? dataHora;
  Embalagem? embalagem;

  Itens(
      {this.id,
        this.status,
        this.quantidade,
        this.valorUnitario,
        this.tipoDesconto,
        this.desconto,
        this.valorTotal,
        this.valorDesconto,
        this.dataHora,
        this.embalagem});

  Itens.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    quantidade = json['quantidade'];
    valorUnitario = json['valorUnitario'];
    tipoDesconto = json['tipoDesconto'];
    desconto = json['desconto'];
    valorTotal = json['valorTotal'];
    valorDesconto = json['valorDesconto'];
    dataHora = json['dataHora'];
    embalagem = json['embalagem'] != null
        ? new Embalagem.fromJson(json['embalagem'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['quantidade'] = this.quantidade;
    data['valorUnitario'] = this.valorUnitario;
    data['tipoDesconto'] = this.tipoDesconto;
    data['desconto'] = this.desconto;
    data['valorTotal'] = this.valorTotal;
    data['valorDesconto'] = this.valorDesconto;
    data['dataHora'] = this.dataHora;
    if (this.embalagem != null) {
      data['embalagem'] = this.embalagem!.toJson();
    }
    return data;
  }
}