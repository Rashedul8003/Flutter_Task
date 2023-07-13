import 'package:coustom_drawer/NewsApp/ui/all_news.dart';
import 'package:coustom_drawer/NewsApp/ui/breaking_news.dart';
import 'package:flutter/material.dart';

class HomePageForNews extends StatefulWidget {
  const HomePageForNews({Key? key}) : super(key: key);

  @override
  State<HomePageForNews> createState() => _HomePageForNewsState();
}

class _HomePageForNewsState extends State<HomePageForNews> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "News App",
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Breaking",
              ),
              Tab(
                text: "All News",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [BreakingNews(), AllNews()],
        ),
      ),
    );
  }
}
