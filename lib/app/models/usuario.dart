class Usuario {
  int? id;
  String? apelido;

  Usuario({this.id, this.apelido});

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    apelido = json['apelido'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['apelido'] = this.apelido;
    return data;
  }
}