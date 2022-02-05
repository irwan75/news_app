import 'dart:convert';

import 'package:news_app/app/shared/data/models/api/response/list_news_response.dart';

class NewsResponse {
  String? status;
  int? totalResults;
  List<ListNewsResponse>? articles;
  NewsResponse({
    this.status,
    this.totalResults,
    this.articles,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'totalResults': totalResults,
      'articles': articles?.map((x) => x.toMap()).toList(),
    };
  }

  factory NewsResponse.fromMap(Map<String, dynamic> map) {
    return NewsResponse(
      status: map['status'],
      totalResults: map['totalResults'],
      articles: List<ListNewsResponse>.from(
          map['articles']?.map((x) => ListNewsResponse.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsResponse.fromJson(String source) =>
      NewsResponse.fromMap(json.decode(source));
}
