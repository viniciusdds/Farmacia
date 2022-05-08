class Embalagem {
  int? id;
  String? codigoBarras;
  String? descricao;
  double? precoVenda;
  int? quantidadePorEmbalagem;

  Embalagem(
      {this.id,
        this.codigoBarras,
        this.descricao,
        this.precoVenda,
        this.quantidadePorEmbalagem});

  Embalagem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    codigoBarras = json['codigoBarras'];
    descricao = json['descricao'];
    precoVenda = json['precoVenda'];
    quantidadePorEmbalagem = json['quantidadePorEmbalagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['codigoBarras'] = this.codigoBarras;
    data['descricao'] = this.descricao;
    data['precoVenda'] = this.precoVenda;
    data['quantidadePorEmbalagem'] = this.quantidadePorEmbalagem;
    return data;
  }
}