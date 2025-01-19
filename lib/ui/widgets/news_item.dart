import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourceResponse.dart';

class NewsItem extends StatefulWidget {
  Source sources;
  NewsItem({required this.sources});

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse?>
    (
      future: ApiManager.getNews(widget.sources.id??''),
      builder: (context,snapshot){
        //todo: loading...
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(
              color: Colors.grey,
            ),
          );
        }
        //todo: error => client
        else if(snapshot.hasError){
          return Column(
            children: [
              Text('Something went wrong.', style: Theme.of(context).textTheme.headlineMedium,),
              ElevatedButton(onPressed: (){
                ApiManager.getNews(widget.sources.id??'');
                setState(() {
                  
                });
              }, child: Text('Try again', style: Theme.of(context).textTheme.headlineMedium,),)
            ],
          );
        }
        //todo: server => response (success , error)
        if(snapshot.data!.status == 'error'){
          return Column(
            children: [
              Text(snapshot.data!.message!, style: Theme.of(context).textTheme.headlineMedium,),
              ElevatedButton(onPressed: (){
                ApiManager.getNews(widget.sources.id??'');
                setState(() {
                  
                });
              }, child: Text('Try again', style: Theme.of(context).textTheme.headlineMedium,),)
            ],
          );
        }
        //todo: success
        var NewsItem = snapshot.data!.articles!;
        return ListView.builder(itemBuilder: (context,index){
          return Text(NewsItem[index].title??'');
        },
        itemCount: NewsItem.length,
        );
      }
    );
  }
}