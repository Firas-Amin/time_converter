
class Articles {

  late final List<dynamic> articles;

  Articles({required this.articles});

  factory Articles.fromJson(Map<String,dynamic>map){
    return Articles(
        articles: map['results']);

  }

}