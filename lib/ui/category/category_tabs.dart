import 'package:flutter/material.dart';
import 'package:news/model/SourceResponse.dart';
import 'package:news/ui/widgets/source_name_item.dart';

class CategoryTabs extends StatefulWidget {
  List<Sources> sourcesList;

  CategoryTabs({required this.sourcesList});

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.sourcesList.length,
      child: TabBar(
        onTap: (index){
          selectedIndex = index;
          setState(() {
            
          });
        },
        tabAlignment: TabAlignment.start,
        indicatorColor: Theme.of(context).indicatorColor,
        dividerColor: Colors.transparent,
        isScrollable: true,
        tabs: widget.sourcesList.map((Sources){
        return SourceNameItem(
          sources: Sources,
          isSelected: selectedIndex == widget.sourcesList.indexOf(Sources));
      }).toList()),
    );
  }
}