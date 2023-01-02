class NewsModel {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  NewsModel({this.status, this.totalResults, this.articles});

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    articles =
        (json['articles'] as List).map((e) => Articles.fromJson(e)).toList();
  }
  // if (json['articles'] != null) {
  //   articles = new List<Articles>();
  //   json['articles'].forEach((v) {
  //     articles.add(new Articles.fromJson(v));
  //   });
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    if (this.articles != null) {
      data['articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  Articles.fromJson(Map<String, dynamic> json)
      : source =
            json['source'] != null ? Source.fromJson(json['source']) : null,
        author = json['author'] == null ? "" : json['author'],
        title = json['title'] == null ? "" : json['title'],
        description = json['description'] == null ? "" : json['description'],
        url = json['url'] == null ? "" : json['url'],
        urlToImage = json['urlToImage'] == null ? "" : json['urlToImage'],
        publishedAt = json['publishedAt'] == null ? "" : json['publishedAt'],
        content = json['content'] == null ? "" : json['content'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.source != null) {
      data['source'] = this.source!.toJson();
    }
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    return data;
  }
}

class Source {
  String id;
  String name;

  Source({required this.id, required this.name});

  Source.fromJson(Map<String, dynamic> json)
      : id = json['id'] == null ? "" : json['id'],
        name = json['name'] == null ? "" : json['name'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
