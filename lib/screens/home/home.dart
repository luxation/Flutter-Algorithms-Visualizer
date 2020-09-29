import 'package:flutter/material.dart';
import 'package:flutter_web_exp1/config/config.dart';
import 'package:flutter_web_exp1/containers/containers.dart';
import 'package:flutter_web_exp1/models/models.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).accentColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Expanded(
            child: SelectionListing(
              title: 'Sorting Algorithms',
              items: [
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                ),
                ListingItem(
                  title: 'Bubble Sort',
                  route: '/bubble',
                )
              ],
              itemsPadding: 8.0,
            ),
          ),
        ),
      ),
    );
  }
}
