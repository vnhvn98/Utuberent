import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/global_widgets/mirrorless_card.dart';
import 'package:flutter_watch_shop/models/cameramirrorless.dart';

class MirrorlessList extends StatefulWidget {
  @override
  _MirrorlessListState createState() => _MirrorlessListState();
}

class _MirrorlessListState extends State<MirrorlessList> {
  List<String> filters = [
    'Trending',
    'Popular',
    'Lowest Price',
    'Highest Price'
  ];
  String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = "Trending";
  }

  @override
  Widget build(BuildContext context) {
    final itemCountRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "270 Items",
          style: TextStyle(fontSize: 17.0),
        ),
        DropdownButton(
          value: selectedFilter,
          items: filters.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value, style: TextStyle(fontSize: 17.0)),
            );
          }).toList(),
          onChanged: (selected) {
            setState(() {
              selectedFilter = selected;
            });
          },
        )
      ],
    );

    final list = Expanded(
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          return MirrorlessCard(mirrorless: mirrorlesss[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 0.65,
        ),
        itemCount: mirrorlesss.length,
      ),
    );

    return Container(
      child: Column(
        children: <Widget>[itemCountRow, list],
      ),
    );
  }
}
