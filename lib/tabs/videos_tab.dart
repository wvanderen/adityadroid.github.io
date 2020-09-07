import 'package:adityagurjar/config/videos.dart';
import 'package:adityagurjar/widgets/video_widget.dart';
import 'package:adityagurjar/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class VideosTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: GridView.count(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        crossAxisCount: 3,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.3),
        children:
            List.generate(videos.length, (index) => VideoWidget(videos[index])),
      ),
      smallScreen: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) => VideoWidget(videos[index])),
    );
  }
}
