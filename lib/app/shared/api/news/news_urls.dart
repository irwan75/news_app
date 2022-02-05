import '../base_url.dart';

class NewsUrls {
  NewsUrls();

  static final _base = BaseUrl.baseUrl;

  final String getNewsEverything = "$_base/everything?";
  final String getNewsTopHeadlines = "$_base/top-headlines?";
}
