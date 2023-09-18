import 'package:flutter/material.dart';
import 'package:news_flutter/models/articles.dart';
import 'package:news_flutter/pages/widgets/news_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: ArticleModel.articles.length,
              itemBuilder: (context, index) {
                return NewsCard(articles: ArticleModel.articles[index]);
              }),
        ));
  }
}
