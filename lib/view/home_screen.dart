import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CustomVideoPlayerController _customVideoPlayerController;
  late VideoPlayerController _videoPlayerController;

  String videoUrl =
      "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
  PageController controller = PageController();
  List<String> imageUrlList = [
    'https://img.freepik.com/free-photo/portrait-young-woman-with-natural-make-up_23-2149084942.jpg',
    'https://img.freepik.com/free-photo/young-female-model-portrait_23-2149084889.jpg?size=626&ext=jpg&ga=GA1.1.386372595.1698019200&semt=ais',
    'https://img.freepik.com/free-photo/close-up-brunette-woman-with-wide-smile_23-2148313344.jpg?size=626&ext=jpg&ga=GA1.1.1412446893.1704499200&semt=ais',
    'https://st4.depositphotos.com/21607914/23515/i/600/depositphotos_235155050-stock-photo-member-south-korean-girl-group.jpg',
    'https://w0.peakpx.com/wallpaper/260/402/HD-wallpaper-lisa-asian-band-beautiful-beauty-black-hair-blackpink-portrait-pretty-singer.jpg',
    'https://i.pinimg.com/736x/dd/e7/98/dde7982f4c1ac524e9fbabb8905a62f9.jpg',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _videoPlayerController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // TiktokWidget().videoPlayerWidget(
          //     customVideoPlayerController: _customVideoPlayerController),
          PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            children: List.generate(
              imageUrlList.length,
              (index) =>
                  TiktokWidget().pageviewWidget(imageUrl: imageUrlList[index]),
            ),
          ),
          Positioned(
              width: 400,
              top: 30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.live_tv_outlined,
                          color: Colors.white,
                        )),
                    const Text(
                      'Following | For you',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(iconSize: 26, currentIndex: 2, items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(Icons.group),
          label: 'friend',
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.black, icon: Icon(Icons.add), label: 'Add'),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.chat),
            label: 'Inbox'),
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.person),
            label: 'Me'),
      ]),
    );
  }
}
