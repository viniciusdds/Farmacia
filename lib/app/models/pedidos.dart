class Pedido {
  String? id;
  String? id_usuario;
  String? apelido;
  String? id_itens;
  String? status;
  String? quantidade;
  String? valorUnitario;
  String? tipoDesconto;
  String? desconto;
  String? valorTotal;
  String? valorDesconto;
  String? dataHora;
  String? id_embalagem;
  String? descricao;
  String? precoVenda;

  Pedido({
    required this.id,
    required this.id_usuario,
    required this.apelido,
    required this.id_itens,
    required this.status,
    required this.quantidade,
    required this.valorUnitario,
    required this.tipoDesconto,
    required this.desconto,
    required this.valorTotal,
    required this.valorDesconto,
    required this.dataHora,
    required this.id_embalagem,
    required this.descricao,
    required this.precoVenda,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'id_usuario': id_usuario,
      'apelido': apelido,
      'id_itens': id_itens,
      'status': status,
      'quantidade': quantidade,
      'valorUnitario': valorUnitario,
      'tipoDesconto': tipoDesconto,
      'desconto': desconto,
      'valorTotal': valorTotal,
      'valorDesconto': valorDesconto,
      'dataHora': dataHora,
      'id_embalagem': id_embalagem,
      'descricao': descricao,
      'precoVenda': precoVenda,
    };
  }

  Pedido.fromMap(Map<String, dynamic> map) {
    id = map['id'].toString();
    id_usuario = map['id_usuario'].toString();
    apelido = map['apelido'];
    id_itens = map['id_itens'].toString();
    status = map['status'];
    quantidade = map['quantidade'].toString();
    valorUnitario = map['valorUnitario'].toString();
    tipoDesconto = map['tipoDesconto'];
    desconto = map['desconto'].toString();
    valorTotal = map['valorTotal'].toString();
    valorDesconto = map['valorDesconto'].toString();
    dataHora = map['dataHora'].toString();
    id_embalagem = map['id_embalagem'].toString();
    descricao = map['descricao'];
    precoVenda = map['precoVenda'].toString();
  }
}