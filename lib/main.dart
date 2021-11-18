
import 'package:flutter/material.dart';
import 'package:time_converter/services/news_services.dart';

import 'news_model.dart';


void main() {


  runApp(TimeZoneConverter());
}

class TimeZoneConverter extends StatelessWidget {
  const TimeZoneConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {


  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
   final currentDate = DateTime.now().millisecondsSinceEpoch;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    // creating an object to reach fetchApi method.
    NewsApi newsApi = NewsApi();
    return Scaffold(
      body:Scaffold(
            body:Center(
                  child: GestureDetector(
                    onTap: ()async{
                        var article = await newsApi.fetchApiArticles();
                        print("you are here");
                        for(var newArticles in article!){
                          print("clicked");
                          print(newArticles.title);
                        }
                           Center(
                            child: Text("Clickherer"),
                                    );

                    },
                    child: Text("Clickherer"),
                  ),
                ),

   )
            );

        }

  }





// ListView.builder(
// itemCount:locations.length,
// itemBuilder: (BuildContext context, int index) {
// String key = locations.keys.elementAt(index);
// return ListTile(
// title:Text("$key"),
// subtitle: Text("${locations[key]!.currentTimeZone.offset}"),
// );
// } ,
// )


