import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/ui/category/category_tabs.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
              Text('Something went wrong.', style: Theme.of(context).textTheme.headlineMedium,),
              ElevatedButton(onPressed: (){
                ApiManager.getSources();
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
                ApiManager.getSources();
                setState(() {
                  
                });
              }, child: Text('Try again', style: Theme.of(context).textTheme.headlineMedium,),)
            ],
          );
        }
        //todo: success
        var sourcesList = snapshot.data!.sources!;
        return CategoryTabs(sourcesList: sourcesList);
      }
    );
  }
}
