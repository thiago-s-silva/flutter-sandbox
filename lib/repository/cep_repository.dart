import 'dart:convert';

import 'package:flutter_sandbox/models/cep_model.dart';
import 'package:http/http.dart' as http;

class CepRepository {
  Future<CepModel> getCep(String cep) async {
    Uri url = Uri.parse("https://viacep.com.br/ws/$cep/json/");

    http.Response response = await http.get(url);
    CepModel cepMetadata = CepModel.fromJson(json.decode(response.body));

    return cepMetadata;
  }
}
