
class Article {
  late final String title;
  late final String link;
  late final String description;
  late final String imageUrl;
  late final String fullDescription;

  Article({required this.title,required this.description,required this.link,required this.imageUrl,required this.fullDescription});


  factory Article.fromJson(Map<String,dynamic> map) {
    return Article(
        title: map['title'] as String,
        description: map['description']as String,
        link: map['link']as String,
        imageUrl: map['image_url']as String,
        fullDescription: map['full_description']as String
    );
  }
}