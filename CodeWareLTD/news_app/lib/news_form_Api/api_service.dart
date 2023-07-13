import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:news_app/news_form_Api/Model/model_news.dart';
import 'package:news_app/news_form_Api/errorPage/error_message.dart';

class ApiService {
  final all_news_url =
      "https://newsapi.org/v2/everything?q=*&apiKey=4ebc144ba1d845e192540df6bd2526cd";

  final breaking_news_url =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=4ebc144ba1d845e192540df6bd2526cd";

  Future<List<ModelNewsApi>?> getAllNews() async {
    try {
      Response response = await get(Uri.parse(all_news_url));
      if (kDebugMode) {
        log(response.body);
      }
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        List<dynamic> body = json['articles'];
        List<ModelNewsApi> articlesbody =
            body.map((e) => ModelNewsApi.fromJson(e)).toList();
        return articlesbody;
      } else {
        return Future.error("Something went wrong");
      }
    } on SocketException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      //return Future.error("No Internet Connection");
      return Future.error(ErrorMessage(message: 'No Internate'));
    } on TimeoutException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return Future.error("Connection Timeout");
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return Future.error("Something went wrong");
    }
    return null;
  }

  Future<List<ModelNewsApi>> getBrekingNews() async {
    try {
      Response response = await get(Uri.parse(breaking_news_url));
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        List<dynamic> body = json['articles'];
        List<ModelNewsApi> articlesbody =
            body.map((e) => ModelNewsApi.fromJson(e)).toList();
        return articlesbody;
      } else {
        throw 'No news found';
      }
    } catch (e) {
      throw e;
    }
  }
}
