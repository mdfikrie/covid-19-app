import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:covid_app/data/models/covid_model.dart';

class CovidProvider {
  Future<List<CovidModel>> fetchCovidList() async {
    Uri url = Uri.parse('https://api.covid19api.com/summary');
    final response = await http.get(url);
    final result = (json.decode(response.body)
        as Map<String, dynamic>)['Countries'] as List;
    List<CovidModel> covid = result.map((e) => CovidModel.fromJson(e)).toList();
    return covid;
  }
}
