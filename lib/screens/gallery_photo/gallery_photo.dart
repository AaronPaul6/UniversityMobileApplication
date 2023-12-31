import 'package:arya_kti/constants.dart';
import 'package:flutter/material.dart';
import 'package:arya_kti/screens/home_screen/home_screen.dart';
import 'package:arya_kti/screens/gallery_photo/cafe.dart';
import 'package:arya_kti/screens/gallery_photo/campus.dart';
import 'package:arya_kti/screens/gallery_photo/car_park.dart';
import 'package:arya_kti/screens/gallery_photo/library.dart';

String cafe_route = CafeGallery.routeName;
String campus_route = CampusGallery.routeName;
String car_park_route = CarParkGallery.routeName;
String library_route = LibraryGallery.routeName;

List<dynamic> routes = [
  [cafe_route,'assets/icons/cafe.svg', 'Cafe'],
  [campus_route,'assets/icons/campus.svg', 'Campus'],
  [car_park_route,'assets/icons/car_park.svg', 'Car Park'],
  [library_route,'assets/icons/library.svg', 'Library']
];


class PhotoGallery extends StatefulWidget {
  static String routeName = 'PhotoGallery';

  @override
  PhotoGalleryState createState() => PhotoGalleryState();
}

class PhotoGalleryState extends State<PhotoGallery> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //when user taps anywhere on the screen, keyboard hides
      appBar: AppBar(
        centerTitle: true,
        title: Center(
            child: Container(

              child: Center(
                child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 0, 15, 0),
                        child: Text(
                          'Photo Gallery',
                          style:
                          TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]
                ),
              ),
            )
        )

        ,
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
        padding: EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: routes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            mainAxisExtent: 155.0

          ),
          itemBuilder: (BuildContext context, int index) {
            return HomeCard(
              onPress: () {
                // Navigator.pushNamed(context, routes[index][0]);
                
                // Navigator.push(context, new MaterialPageRoute(
                //                 builder: (context) => new [index][0])
                //               );
              },
              icon: routes[index][1],
              title: routes[index][2],
            );
          },
        ),
      ),

    );
  }
}

List<String> images = [
  'assets/images/temp.jpg',
   'assets/images/temp.jpg',
    'assets/images/temp.jpg',
  'assets/images/temp.j.jpg',
];