import 'package:farmacia/app/models/itens.dart';
import 'package:farmacia/app/models/usuario.dart';

class Pedido {
  int? id;
  String? dataAbertura;
  Usuario? usuario;
  List<Itens>? itens;
  double? total;

  Pedido({this.id, this.dataAbertura, this.usuario, this.itens, this.total});

  Pedido.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dataAbertura = json['dataAbertura'];
    usuario =
    json['usuario'] != null ? new Usuario.fromJson(json['usuario']) : null;
    if (json['itens'] != null) {
      itens = <Itens>[];
      json['itens'].forEach((v) {
        itens!.add(new Itens.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['dataAbertura'] = this.dataAbertura;
    if (this.usuario != null) {
      data['usuario'] = this.usuario!.toJson();
    }
    if (this.itens != null) {
      data['itens'] = this.itens!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}