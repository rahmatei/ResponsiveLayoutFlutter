import 'package:flutter/material.dart';
import 'package:responsive_layout_flutter/responsive/desktop_scaffold.dart';
import 'package:responsive_layout_flutter/responsive/mobile_scaffold.dart';
import 'package:responsive_layout_flutter/responsive/responsive_layout.dart';
import 'package:responsive_layout_flutter/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
