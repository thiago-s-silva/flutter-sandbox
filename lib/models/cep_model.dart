class CepModel {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;

  CepModel(this.cep, this.logradouro, this.complemento, this.bairro,
      this.localidade, this.uf, this.ibge, this.gia, this.ddd, this.siafi);

  CepModel.fromJson(Map<String, dynamic> json)
      : cep = json["cep"],
        logradouro = json["logradouro"],
        complemento = json["complemento"],
        bairro = json["bairro"],
        localidade = json["localidade"],
        uf = json["uf"],
        ibge = json["ibge"],
        gia = json["gia"],
        ddd = json["ddd"],
        siafi = json["siafi"];

  String get fullAddress {
    return "$logradouro, $complemento - $bairro - $cep";
  }
}
