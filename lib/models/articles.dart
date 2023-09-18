// ignore_for_file: public_member_api_docs, sort_constructors_first
class ArticleModel {
  static List<Articles> articles = [];
}

class Articles {
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Articles({
    required this.author,
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Articles.fromMap(Map<String, dynamic> map) {
    return Articles(
        author: map["author"],
        title: map["title"],
        description: map["description"],
        urlToImage: map["urlToImage"],
        publishedAt: map["publishedAt"],
        content: map["content"]);
  }

  toMap() => {
        "author": author,
        "title": title,
        "description": description,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt,
        "content": content
      };
}
