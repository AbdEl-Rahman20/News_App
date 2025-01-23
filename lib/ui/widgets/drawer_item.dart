import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  String text;
  String image;
  DrawerItem({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(AssetImage(image,),color: Colors.white,),
        Text(text, style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
      ],
    );
  }
}