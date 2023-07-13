import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:some_project_list/currency_exchange/constant/constant.dart';
import 'package:some_project_list/currency_exchange/model/currency_model.dart';

class ApiService {
  Future<List<CurrencyModel>> getLeatest(String countyCodeUrl) async {
    List<CurrencyModel> currencyModelList = [];
    String url =
        '${base_url}latest?apikey=$apiKey&base_currency=$countyCodeUrl';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        Map<String, dynamic> body = json['data'];
        body.forEach((key, value) {
          CurrencyModel currencyModel = CurrencyModel.fromJson(value);
          currencyModelList.add(currencyModel);
        });
        return currencyModelList;
      } else {
        return [];
      }
    } catch (e) {
      throw e.toString();
    }
  }

  Future<List<CurrencyModel>> getTerget(
      String baseCounty, String targetCountry) async {
    List<CurrencyModel> currencyModelList = [];
    String url =
        '${base_url}latest?apikey=$apiKey&base_currency=$baseCounty&currencies=$targetCountry';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        Map<String, dynamic> body = json['data'];
        body.forEach((key, value) {
          CurrencyModel currencyModel = CurrencyModel.fromJson(value);
          currencyModelList.add(currencyModel);
        });
        return currencyModelList;
      } else {
        return Future.error('somethig worng');
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return Future.error("Something went wrong");
  }
}
