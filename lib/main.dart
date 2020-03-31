import 'package:flutter/material.dart';

import 'app_config.dart';
import 'home.dart';

void main() => runApp(GalleryApp());

class GalleryApp extends StatefulWidget {
  GalleryApp({Key key}) : super(key: key);

  @override
  GalleryAppState createState() => new GalleryAppState();
}

class GalleryAppState extends State<GalleryApp> {
  // Initialize app settings from the default configuration.
  bool _showPerformanceOverlay = defaultConfig.showPerformanceOverlay;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: defaultConfig.appName,
        theme: defaultConfig.theme,
        showPerformanceOverlay: _showPerformanceOverlay,
        home: new Home(
          showPerformanceOverlay: _showPerformanceOverlay,
          onShowPerformanceOverlayChanged: (bool value) {
            setState(() {
              _showPerformanceOverlay = value;
            });
          },
        ));
  }
}
