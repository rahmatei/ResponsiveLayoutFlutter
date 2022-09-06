import 'package:flutter/material.dart';
import 'package:responsive_layout_flutter/constant.dart';

import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: defaultBackground,
      drawer: drawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, index) {
                return const MyBox();
              },
            ),
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const MyTile();
            },
          ))
        ],
      ),
    );
  }
}
