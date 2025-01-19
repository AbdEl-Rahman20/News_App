import 'package:flutter/material.dart';
import 'package:news/model/SourceResponse.dart';

class SourceNameItem extends StatelessWidget {
  Source sources;
  bool isSelected;
  SourceNameItem({required this.sources, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(sources.name??'',style: isSelected ? Theme.of(context).textTheme.headlineMedium :
    Theme.of(context).textTheme.headlineSmall,);
  }
}