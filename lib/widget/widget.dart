import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class TiktokWidget {
  Widget videoPlayerWidget(
      {CustomVideoPlayerController? customVideoPlayerController}) {
    return CustomVideoPlayer(
        customVideoPlayerController: customVideoPlayerController!);
  }

  Widget pageviewWidget({String? imageUrl}) {
    return SizedBox(
      child: Stack(
        children: [
          Image(
            height: double.infinity,
            fit: BoxFit.fitHeight,
            image: NetworkImage(
              imageUrl!,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.white)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              maxRadius: 22,
                              minRadius: 22,
                              backgroundImage: NetworkImage(imageUrl),
                            ),
                          ),
                        ),
                        const Positioned(
                            bottom: -2,
                            right: 12,
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.red,
                              size: 20,
                            ))
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white70,
                          size: 35,
                        ),
                        Text(
                          '51.2M',
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Icon(
                          Icons.chat,
                          color: Colors.white70,
                          size: 35,
                        ),
                        Text(
                          '3908',
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Icon(
                          Icons.bookmark_border_sharp,
                          color: Colors.white70,
                          size: 35,
                        ),
                        Text(
                          '120',
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white70,
                          size: 35,
                        ),
                        Text(
                          '2345',
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
