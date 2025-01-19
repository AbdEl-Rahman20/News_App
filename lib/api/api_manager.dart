import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/api_constants.dart';
import 'package:news/api/api_endpoints.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourceResponse.dart';


class ApiManager{
// https://newsapi.org/v2/top-headlines/sources?apiKey=c967dba1f88047feb9542817636407f8
  static Future<SourceResponse?> getSources() async {
    Uri url = Uri.https(ApiConstants.baseUrl,ApiEndpoints.sourcesApi,{
      'apiKey' : ApiConstants.apiKey
    });
    try{
      var response = await http.get(url);
    // String => Json => Object
    return SourceResponse.fromJson(jsonDecode(response.body));
    }catch(e){throw e ;}
  }

// https://newsapi.org/v2/everything?q=bitcoin&apiKey=c967dba1f88047feb9542817636407f8
  static Future<NewsResponse?> getNews(String sourceId)async{
    Uri url = Uri.https(ApiConstants.baseUrl,ApiEndpoints.newsApi,{
      'apiKey' : ApiConstants.apiKey,
      'sources': sourceId
    });
    try{
      var response = await http.get(url);
    // String => Json => Object
    return NewsResponse.fromJson(jsonDecode(response.body));
    }catch(e){throw e ;}
  }
}
