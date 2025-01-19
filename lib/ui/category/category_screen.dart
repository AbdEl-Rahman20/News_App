import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/model/SourceResponse.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse?>
    (
      future: ApiManager.getSources(),
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
              Text('Something went wrong.'),
              ElevatedButton(onPressed: (){}, child: Text('Try again',),)
            ],
          );
        }
        //todo: server => response (success , error)
        if(snapshot.data!.status == 'error'){
          return Column(
            children: [
              Text(snapshot.data!.message!),
              ElevatedButton(onPressed: (){}, child: Text('Try again',),)
            ],
          );
        }
        //todo: success
        var sourcesList = snapshot.data!.sources!;
        return ListView.builder(itemBuilder: (context,index){
          return Text(sourcesList[index].name??'');
        },
        itemCount: sourcesList.length,);
      }
    );
  }
}
