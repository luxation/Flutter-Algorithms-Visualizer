import 'package:flutter/material.dart';
import 'package:flutter_web_exp1/components/components.dart';

class ListingItem {
  ListingItem({this.title, this.route});

  final String title;
  final String route;

  Widget generateGridItem(double size) =>
      GridItem(title: this.title, route: this.route, size: size);

  Widget generateListItem(double size) =>
      ListItem(title: this.title, route: this.route, size: size);
}
