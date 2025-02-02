// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/model/NewsResponse.dart';

class NewsWidget extends StatelessWidget {
  Articles news;
  NewsWidget({required this.news});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.02,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: height * 0.02,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).indicatorColor,
          width: 2
        )
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(news.urlToImage??''),
          ),
          SizedBox(height: height * 0.02,),
          Text(news.title??'',style: Theme.of(context).textTheme.headlineLarge,),
          SizedBox(height: height * 0.02,),
          Row(
            children: [
              Expanded(child: Text('By: ${news.author??''}',style: Theme.of(context).textTheme.labelLarge,),),
              Text(news.publishedAt??'',style: Theme.of(context).textTheme.labelLarge,),
            ],
          ),
        ],
      ),
    );
  }
}



            //         CachedNetworkImage(
            //   imageUrl: news.urlToImage??'',
            //   placeholder: (context, url) => Center(
            //     child: CircularProgressIndicator(
            //       color: Colors.grey,
            //     )),
            //   errorWidget: (context, url, error) => Icon(Icons.error),
            // ),