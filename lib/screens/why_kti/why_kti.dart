import 'package:flutter/material.dart';

class WhyKti extends StatefulWidget {
  static String routeName = 'WhyKti';

  @override
  WhyKtiState createState() => WhyKtiState();
}

class WhyKtiState extends State<WhyKti> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF345FB4),
        centerTitle: true,
        title: Text(
          'WHY US?',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Color(0xFF345FB4),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
    physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child:
              Image.asset(
                'assets/images/temp.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(),
            Container(
              child:Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
              ),
         
          ], //children
        ),
      ),
      ));
  }
}
