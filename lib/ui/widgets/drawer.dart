import 'package:flutter/material.dart';
import 'package:news/ui/widgets/drawer_item.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: width,
          padding: EdgeInsets.symmetric(vertical: height * 0.10),
          color: Colors.white,
          child: Text('News App', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
        )
        // DrawerItem(text: 'Go To Home', image: ),
      ],
    );
  }
}