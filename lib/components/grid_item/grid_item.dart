import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  GridItem({@required this.title, this.route, this.size = 100.0}) : assert(title.isNotEmpty, size > 20.0);
  final String title;
  final String route;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(route),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Theme.of(context).primaryColor,
            ),
            width: size,
            height: size,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(title),
          )
        ],
      ),
    );
  }
}
