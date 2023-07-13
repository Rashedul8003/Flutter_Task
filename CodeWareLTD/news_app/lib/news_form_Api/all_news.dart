import 'package:flutter/material.dart';
import 'package:news_app/news_form_Api/Model/model_news.dart';
import 'package:news_app/news_form_Api/api_service.dart';
import 'package:news_app/news_form_Api/errorPage/error_message.dart';
import 'package:news_app/news_form_Api/list_news.dart';

import 'errorPage/no_internet_connection.dart';

class AllNews extends StatefulWidget {
  const AllNews({Key? key}) : super(key: key);

  @override
  State<AllNews> createState() => _AllNews();
}

class _AllNews extends State<AllNews> {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: apiService.getAllNews(),
          builder: (context, value) {
            if (value.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (value.hasData) {
              List<ModelNewsApi> brekibgValue = value.data ?? [];
              return ListView.builder(
                itemBuilder: (context, index11) {
                  return NewsList(modelNewsApi: brekibgValue[index11]);
                },
                itemCount: brekibgValue.length,
              );
            } else if (value.hasError) {
              // String error = value.error as String;
              // return Text(error);
              ErrorMessage error = value.error as ErrorMessage;
              return ErrorScreen(
                errorMessage: error,
                callback: () {
                  setState(() {});
                },
              );
            }
            return SizedBox.shrink();
          }),
    );
  }
}
