import 'package:flutter/material.dart';
import 'package:news_flutter/models/articles.dart';

class NewsCard extends StatelessWidget {
  final Articles articles;

  const NewsCard({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Image.network(articles.urlToImage),
      title: Text(articles.title),
    ));
  }
}
