import 'package:adityagurjar/models/video_model.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class VideoWidget extends StatelessWidget {
  final Video _video;
  VideoWidget(this._video);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      child: InkWell(
        onTap: onVideoClick,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Hero(
                  tag: _video.name,
                  child: Image.asset(
                    _video.image,
                    width: width,
                    height: height,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onVideoClick() {
    if (_video.link != null) html.window.open(_video.link, 'dave');
  }
}
