import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  static String routeName = 'About_Us';

  @override
  _AboutUs createState() => _AboutUs();
}

class _AboutUs extends State<AboutUs> {
  //validate our form now
  final _formKey = GlobalKey<FormState>();

  //changes current state
  @override
  void initState() {
    // super.initState();
    //   _ = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //when user taps anywhere on the screen, keyboard hides
      appBar: AppBar(
        // Overide the default Back button
        backgroundColor: Color(0xFF345FB4),
        centerTitle: true,
        title: Text(
          'ABOUT US',
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                // margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child:
                Image.asset(
                  'assets/images/temp.jpg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 22,
            ),
            Container(
              child: Align(
                alignment: AlignmentDirectional(0, -1),
                child: Text(
                  'History of University',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF345FB4),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(22)),
                color: Colors.grey[100],
              ),
              width: MediaQuery.of(context).size.width,
              height: 330,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22,
            ),
            Container(
              // margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/temp.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22,
            ),
            Container(
              child: Align(
                alignment: AlignmentDirectional(0, -1),
                child: Text(
                  'Dean Message ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF345FB4),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(22)),
                color: Colors.grey[200],
              ),
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 330,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22,
            ),
            Container(
              // margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/temp.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 22,
            ),
            Container(
              child: Align(
                alignment: AlignmentDirectional(0, -1),
                child: Text(
                  'University System ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF345FB4),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(22)),
                color: Colors.grey[100],
              ),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              height: 330,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ], //children
        ),
      ),
    );
  }
}

// }
