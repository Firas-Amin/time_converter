import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:time_converter/news_model.dart';

import '../articles_model.dart';
import 'api.dart';
class NewsApi  {
  
 Future<List<Article>?> fetchApiArticles() async {
   try {
     final response = await http.get(
         Uri.parse('https://newsdata.io/api/1/news?apikey=$API'));

     if(response.statusCode == 200){
       print(response.statusCode.toString());
       var jsonData = jsonDecode(response.body);

       Articles articles = Articles.fromJson(jsonData);

       List<Article> articlesList = articles.articles.map((e) => Article.fromJson(jsonData)).toList();
       return articlesList;
     }
     else {
       print('statusCode = ${response.statusCode}');
     }
   } catch(e){
     print(e);
   }
 }

 Future<List<Article>?> fetchApiCategory(String category ) async {
   try {
     final response = await http.get(
         Uri.parse('https://newsdata.io/api/1/news?apikey=$API&category=$category'));

     if(response.statusCode == 200){

       var data =response.body;
       var jsonData = jsonDecode(data);

       Articles articles = Articles.fromJson(jsonData);

       List<Article> articlesList = articles.articles.map((e) => Article.fromJson(jsonData)).toList();

       return articlesList;



     }


     else {
       print('statusCode = ${response.statusCode}');
     }
   } catch(e){
     print(e);
   }
 }
}