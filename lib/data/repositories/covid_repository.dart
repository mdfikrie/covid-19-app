import 'dart:convert';

import 'package:covid_app/data/models/covid_model.dart';
import 'package:covid_app/data/provider/covid_provider.dart';

class CovidRepository {
  final provider = CovidProvider();

  Future<List<CovidModel>> fetchCovidList() {
    return provider.fetchCovidList();
  }
}
