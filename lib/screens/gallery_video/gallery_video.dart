import 'package:arya_kti/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoGallery extends StatefulWidget {
  static String routeName = 'VideoGallery';

  @override
  VideoGalleryState createState() => VideoGalleryState();
}

class VideoGalleryState extends State<VideoGallery> {
  final _formKey = GlobalKey<FormState>();

  late List _controller =[null, null, null, null];

  @override
  void initState() {

    List<String?> videoId = videos.map((e) => YoutubePlayer.convertUrlToId(e)).toList();

    for(int i = 0 ; i < videos.length ; i++){

      _controller[i] = YoutubePlayerController(
          initialVideoId: videoId[i]!,
          flags: YoutubePlayerFlags(
          autoPlay: false,
        )
      );
    }
    // print(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //when user taps anywhere on the screen, keyboard hides
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Video Gallery',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            elevation: 0,
          ),
        ),

      ),

      body: Container(
        padding: EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: _controller.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 18.0,
              mainAxisExtent: 155.0

          ),
          itemBuilder: (BuildContext context, int index) {
            return  YoutubePlayer(
                controller: _controller[index],
                showVideoProgressIndicator: true,
              );
          },
        ),
      ),

    );
    // // TODO: implement build
    // throw UnimplementedError();
  }
}

List<String> videos = [
  "https://youtu.be/lqo9mhhu3WA",
  "https://youtu.be/9bf-Ke-8H3o",
"https://youtu.be/MUhFXVP6kjw",
"https://youtu.be/mfBpQfz43hI",
];

