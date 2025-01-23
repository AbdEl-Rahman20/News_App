import 'package:flutter/material.dart';
import 'package:news/model/category_model.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CategoryFragment extends StatelessWidget {
  List <CategoryModel> categoriesList = [];

  @override
  Widget build(BuildContext context) {
    categoriesList = CategoryModel.getCategoriesList(false);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * .01,
      ),
      child: Column(
        children: [
          Text('Good Morning\nHere Is Some News For You', style: Theme.of(context).textTheme.labelMedium,),
          SizedBox(height: height * 0.02,),
          Expanded(child: ListView.separated(
            separatorBuilder: (context,index){
              return SizedBox(height: height * 0.02,);
            },
            itemBuilder: (context,index){
            return Container(
              child: Stack(
                alignment: index % 2 == 0
                ? Alignment.bottomRight
                : Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(categoriesList[index].imagePath),
                  ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: width * 0.02,
                        vertical: height * 0.02,
                      ),
                      child: ToggleSwitch(
                        customWidths: [
                          width * 0.35 , width * 0.15
                        ],
                        cornerRadius: 20.0,
                        activeBgColors: 
                          [[Colors.white], 
                          [Colors.grey],],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        customWidgets: [
                          Text('View All',style: Theme.of(context).textTheme.labelSmall,),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(Icons.arrow_forward_ios_outlined, size: 25, color: Colors.white,),
                          ),
                        ],
                        radiusStyle: true,
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                ],
              ),
            );
          },
          itemCount:categoriesList.length,))
        ],
      ),
    );
  }
}