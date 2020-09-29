import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem({@required this.title, this.route, this.size = 100.0})
      : assert(title.isNotEmpty, size > 20.0);
  final String title;
  final String route;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(route),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Theme.of(context).primaryColor,
        ),
        width: size,
        height: size,
      ),
      contentPadding: const EdgeInsets.all(0.0),
      title: Text(title),
    );
  }
}
