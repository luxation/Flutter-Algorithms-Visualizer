import 'package:flutter/material.dart';
import 'package:flutter_web_exp1/models/models.dart';

class SelectionListing extends StatefulWidget {
  SelectionListing(
      {@required this.title, @required this.items, this.itemsPadding = 8.0})
      : assert(title.isNotEmpty, items.isNotEmpty);

  final String title;
  final List<ListingItem> items;
  final double itemsPadding;

  @override
  _SelectionListingState createState() => _SelectionListingState();
}

class _SelectionListingState extends State<SelectionListing> {
  bool isList = false;
  final double listItemSize = 60.0;
  final double gridItemSize = 100.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            IconButton(
                icon: Icon(Icons.list),
                onPressed: () {
                  setState(() {
                    isList = true;
                  });
                }),
            IconButton(
                icon: Icon(Icons.view_module),
                onPressed: () {
                  setState(() {
                    isList = false;
                  });
                })
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: isList
              ? ListView.builder(
                  itemCount: widget.items.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: widget.itemsPadding, bottom: widget.itemsPadding * 2),
                      child: widget.items[index].generateListItem(listItemSize),
                    );
                  },
                )
              : GridView.builder(
                  shrinkWrap: true,
                  itemCount: widget.items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        itemsPerRow(gridItemSize, widget.itemsPadding, context),
                    crossAxisSpacing: widget.itemsPadding,
                    mainAxisSpacing: widget.itemsPadding,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return widget.items[index].generateGridItem(gridItemSize);
                  },
                ),
        ),
      ],
    );
  }

  int itemsPerRow(double itemSize, double paddingSize, BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width - (32.0);
    final double itemSizeWithPadding = itemSize + (paddingSize * 2);
    return (screenWidth / itemSizeWithPadding).floor();
  }
}
