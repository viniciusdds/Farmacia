class Produto {

  int? id;
  String? descricao;
  double? precoVenda;

  Produto({
    this.id,
    this.descricao,
    this.precoVenda,
  });
  Produto.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    descricao = json['descricao']?.toString();
    precoVenda = json['precoVenda']?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['descricao'] = descricao;
    data['precoVenda'] = precoVenda;
    return data;
  }
}